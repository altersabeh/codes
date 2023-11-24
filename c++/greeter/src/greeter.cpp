#include <iostream>

using namespace std;

class InputHandler {
public:
  static string getUserName() {
    string userinput;

    cout << "Enter your name: ";
    getline(cin, userinput);

    string name = userinput;
    name.erase(0, name.find_first_not_of(" \t\n\r"));
    name.erase(name.find_last_not_of(" \t\n\r") + 1);

    if (name.empty()) {
      name = "Stranger";
    }

    return name;
  }
};

class Greeter {
private:
  string username;

public:
  Greeter(const string &name) : username(name) {}

  void greet() {
    cout << "Hello, " << username << "!" << endl;
    cout << "Greetings from C++!" << endl;
  }
};

int main() {
  string name = InputHandler::getUserName();
  Greeter greeter(name);

  greeter.greet();

  return 0;
}
