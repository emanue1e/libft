#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
	//declaring variables
	int num;
	int cpuNum;
	int guess;

	srand(time(NULL)); //need random seed at every execution 

	printf("Pick any positive integer: ");
	scanf("%d", &num);
	cpuNum = (rand() % num) + 1;
	printf("Guess the number from 1 to %d: ", num);
	scanf("%d", &guess);

	//if user's guess is wrong, keeps asking user to guess
	while(guess != cpuNum) {
		if(guess > cpuNum) {
			printf("Lower!\n");
		}
		if(guess < cpuNum) {
			printf("Higher!\n");
		}
		scanf("%d", &guess);
	}
	
	//if user's guess is correct, user wins and code ends
	if(guess == cpuNum) {
		printf("Correct! You win!\n");
	}
	
	return 0;
}
