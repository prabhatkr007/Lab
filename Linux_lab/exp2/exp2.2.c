#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <dirent.h>
#include <pwd.h>
#include <grp.h>
#include <time.h>

void print_file_info(const char *filename) {
    struct stat file_stat;

    if (stat(filename, &file_stat) == -1) {
        perror("stat");
        return;
    }

    printf("%10s", (S_ISDIR(file_stat.st_mode)) ? "directory" : "file");
    printf("%10ld", (long) file_stat.st_size);

    struct passwd *pw = getpwuid(file_stat.st_uid);
    struct group *gr = getgrgid(file_stat.st_gid);

    if (pw) {
        printf("%10s", pw->pw_name);
    } else {
        printf("%10d", file_stat.st_uid);
    }

    if (gr) {
        printf("%10s", gr->gr_name);
    } else {
        printf("%10d", file_stat.st_gid);
    }

    char time_str[80];
    strftime(time_str, sizeof(time_str), "%Y-%m-%d %H:%M:%S", localtime(&file_stat.st_mtime));
    printf("%20s", time_str);

    printf("%20s\n", filename);
}

int main(int argc, char *argv[]) {
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <directory>\n", argv[0]);
        return EXIT_FAILURE;
    }

    DIR *dir = opendir(argv[1]);
    if (!dir) {
        perror("opendir");
        return EXIT_FAILURE;
    }

    struct dirent *entry;
    while ((entry = readdir(dir)) != NULL) {
        if (entry->d_name[0] != '.') { // Exclude hidden files/directories
            char path[1024];
            snprintf(path, sizeof(path), "%s/%s", argv[1], entry->d_name);
            print_file_info(path);
        }
    }

    closedir(dir);

    return EXIT_SUCCESS;
}
