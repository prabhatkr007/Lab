#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main() {
    pid_t pid;

    // Fork a child process
    pid = fork();

    if (pid < 0) { // Error occurred
        fprintf(stderr, "Fork failed!\n");
        return 1;
    } else if (pid == 0) { // Child process
        printf("child\n");
    } else { // Parent process
        printf("parent\n");
    }

    return 0;
}
