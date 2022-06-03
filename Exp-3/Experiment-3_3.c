#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

int main(int argc, char const *argv[])
{
	pid_t pid = fork();
	if (pid == 0){
		printf("Child PPID: %d PID: %d\n", getppid(), getpid());
	}
	else if (pid > 0){
		printf("Parent PID: %d\n", getpid());
		printf("Waiting for Child process to finish.\n");
		wait(NULL);
		printf("Child process finished.\n");
	}
	else{
		printf("Unable to create Child process\n");
	}
	return EXIT_SUCCESS;
}