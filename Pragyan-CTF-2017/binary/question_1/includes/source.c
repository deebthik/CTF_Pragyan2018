#include <stdio.h>

void flag() {
	printf("\n To be decided \n");
}

void get_info() {
	char name[16];
	volatile int count;
	int age[0];
	int i=0;
	count = 0x00000000;
	
	printf("Enter your name :- ");
	scanf("%s", name);
	
	printf("Enter your age :- ");
	scanf("%d", age);
	
	i = 0;
	count = (count >> 30) + 1;
	printf("\n You don't seem to be ");

	for(; i < count; i++) {
		printf("%d ",age[i]);
	}
	
	printf("years old !!");
	
	printf("\n\nEnter your age again :- ");
	scanf("%s", age);
	
	printf("\nWelcome, %s, we have been looking for you for %s whole years !!\n\n", name, age);
	
}

int main() {

	get_info();	
	
}
