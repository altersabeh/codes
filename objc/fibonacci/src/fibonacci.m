/**
 * Fibonacci Series Calculator
 *
 * The Fibonacci Series Calculator is an Objective-C program that
 * calculates and prints the Fibonacci Series up to the nth term with
 * arbitrary precision. It includes features such as error handling
 * for input validation, handling special cases where numbers don't
 * end in "th" (e.g. 1, 2, 3), displaying the sum of the series, and
 * providing the current date and time.
 *
 * License: This program is in the public domain.
 */

#import <Foundation/Foundation.h>
#import <openssl/bn.h>
#import <signal.h>

NSInteger validateInput(NSString *input);
NSString *getSuffix(NSInteger n);
void fibonacciSeries(NSInteger n);
void getUserInput();
void interruptHandler(int signum);
void eofHandler(void);
void dateAndTime(void);
void signalHandler();

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    printf("============Fibonacci Series Calculator============\n");
    printf("This Program was Written Using: Objective-C\n");

    signalHandler();
    dateAndTime();
    getUserInput();

    printf("===================================================\n");
  }
  return 0;
}

// Function to get user input.
void getUserInput() {
  while (true) {
    char input[100];

    printf("Enter the value of n (an integer): ");
    fgets(input, sizeof(input), stdin);

    if (feof(stdin)) {
      eofHandler();
    }

    NSString *trimmedInput = [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
    trimmedInput = [trimmedInput
        stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

    if ([trimmedInput length] == 0) {
      printf("Please enter something...\n");
      continue;
    } else if ([trimmedInput isEqualToString:@"exit"]) {
      printf("Exiting.the program..\n");
      break;
    }

    NSInteger n = validateInput(trimmedInput);

    if (n > 0) {
      fibonacciSeries(n);
      break;
    } else {
      printf("Please enter a valid positive integer.\n");
    }
  }
}

// Calculates and prints the Fibonacci Series up to the nth term.
void fibonacciSeries(NSInteger n) {
  BIGNUM *a, *b, *temp, *sum;
  a = BN_new();
  b = BN_new();
  temp = BN_new();
  sum = BN_new();

  BN_zero(a);
  BN_one(b);

  printf("Fibonacci Series up to the %ld%s term:\n", (long)n,
         [[getSuffix(n) description] UTF8String]);

  NSMutableArray *series = [NSMutableArray array];

  for (NSInteger i = 0; i <= n; i++) {
    if (n <= 5000) {
      [series addObject:[NSString stringWithUTF8String:BN_bn2dec(a)]];
      if (i < n) {
        [series addObject:@", "];
      }
    } else {
      printf("%s", BN_bn2dec(a));
      if (i < n) {
        printf(", ");
      }
    }


    BN_copy(temp, a);
    BN_copy(a, b);
    BN_add(b, b, temp);
    BN_add(sum, sum, temp); // Calculate the sum
  }

  if (n <= 5000) {
    for (NSString *number in series) {
      printf("%s", [number UTF8String]);
    }
  }

  puts("\n");
  printf("Sum of the Fibonacci Series: %s\n", BN_bn2dec(sum));

  BN_free(a);
  BN_free(b);
  BN_free(temp);
  BN_free(sum);
}

// Handle special cases where numbers don't end in "th"
NSString *getSuffix(NSInteger n) {
  if (n % 10 == 1 && n % 100 != 11) {
    return @"st";
  } else if (n % 10 == 2 && n % 100 != 12) {
    return @"nd";
  } else if (n % 10 == 3 && n % 100 != 13) {
    return @"rd";
  } else {
    return @"th";
  }
}

// Display the current date and time
void dateAndTime() {
  NSDate *currentDate = [NSDate date];

  NSString *layout = @"MMMM dd, yyyy - HH:mm:ss";
  NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
  [dateFormatter setDateFormat:layout];
  NSString *formattedDate = [dateFormatter stringFromDate:currentDate];

  printf("Date and Time: %s\n", [formattedDate UTF8String]);
}

// Functions to handle user input and errors
NSInteger validateInput(NSString *input) {
  NSCharacterSet *nonDigits = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];

  if ([input rangeOfCharacterFromSet:nonDigits].location == NSNotFound) {
    NSInteger n = [input integerValue];
    if (n > 0) {
      return n;
    }
  }
  return -1;
}

void eofHandler() {
  printf("\n");
  printf("End of File encountered.. Stopping...\n");
  printf("===================================================\n");
  exit(EXIT_SUCCESS);
}

void interruptHandler(int signum) {
  printf("\n");
  printf("Interrupt received.. Exiting...\n");
  printf("===================================================\n");
  exit(EXIT_SUCCESS);
}

void signalHandler() {
  signal(SIGINT, interruptHandler);
}
