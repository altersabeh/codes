#import <Foundation/Foundation.h>

@interface InputHandler : NSObject
+ (NSString *)getUserName;
@end

@implementation InputHandler
+ (NSString *)getUserName {
  char userinput[256];

  printf("Enter your name: ");
  fgets(userinput, sizeof(userinput), stdin);

  NSString *name = [NSString stringWithUTF8String:userinput];
  name = [name stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

  return name;
}
@end

@interface Greeter : NSObject {
  NSString *username;
}
@property(strong) NSString *username;
- (instancetype)init:(NSString *)name;
- (void)greet;
@end

@implementation Greeter
@synthesize username;
- (instancetype)init:(NSString *)name {
  self = [super init];
  if (self) {
    username = name;
  }
  return self;
}

- (void)greet {
  printf("Hello, %s!\n", [username UTF8String]);
  printf("Greetings from Objective-C!\n");
}
@end

int main() {
  @autoreleasepool {
    NSString *name = [InputHandler getUserName];
    Greeter *greeter = [[Greeter alloc] init:name];
    [greeter greet];
  }
  return 0;
}
