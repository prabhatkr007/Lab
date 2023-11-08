#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main() {
    pid_t child_pid;

    // Fork a child process
    child_pid = fork();

    if (child_pid > 0) { // Parent process
        // Parent exits immediately
        printf("Parent process is exiting...\n");
        exit(0);
    } else if (child_pid == 0) { // Child process
        // Child process sleeps for a while
        printf("Child process is running...\n");
        sleep(10); // Simulating some work

        // Child process completes
        printf("Child process is exiting...\n");
        exit(0);
    } else { // Fork failed
        fprintf(stderr, "Fork failed!\n");
        return 1;
    }

    return 0;
}
