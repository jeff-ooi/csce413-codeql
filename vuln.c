#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// gcc -z execstack -fno-stack-protector vuln.c -o vuln -g

void vulnerable_function() {
    char buffer[64]; // Small buffer
    printf("Enter your payload: ");
    scanf("%s", buffer); // Unsafe function that can cause buffer overflow
    printf("You entered: %s\n", buffer);
}

int main() {
    printf("Welcome to the vulnerable application!\n");
    vulnerable_function();
    return 0;
}

