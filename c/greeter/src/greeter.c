#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char* GetUserName() {
  char userinput[100];
  printf("Enter your name: ");
  if (fgets(userinput, 100, stdin) == NULL) {
    return NULL;
  }

  char* name = strdup(userinput);
  name[strlen(name)-1] = '\0';

  name += strspn(name, " \t\n\r");
  size_t len = strlen(name);
  while (len > 0 && isspace((unsigned char)name[len - 1])) {
    name[--len] = '\0';
  }

  if (strlen(name) == 0) {
    strcpy(name, "Stranger");
  }

  return name;
}

typedef struct {
  char* username;
} Greeter;

void Greeter_Greet(Greeter* greeter) {
  printf("Hello, %s!\n", greeter->username);
  puts("Greetings from C!");
}

int main() {
  char* name = GetUserName();
  Greeter greeter;
  greeter.username = name;

  Greeter_Greet(&greeter);

  return 0;
}
