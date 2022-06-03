#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

void childTask(){
	printf("Welcome to CSE dept. MIET\n");
}

void parentProcess(){
	printf("Main task in execution\n");
}

int main(){
	pid_t pid = fork();
	if (pid == 0){
		childTask();
		exit(EXIT_SUCCESS);
	}
	else if (pid > 0){
		wait(NULL);
	}
	return EXIT_SUCCESS;
}