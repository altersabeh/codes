#include <iostream>
#include <algorithm>

using namespace std;

class Greeter {
private:
  string name;

public:
  Greeter() : name(prompt_name()) {}

  static string prompt_name() {
    string name;
    cout << "Enter your name: ";
    cout.flush();
    getline(cin, name);
    name.erase(0, name.find_first_not_of(" \t\n\r"));
    name.erase(name.find_last_not_of(" \t\n\r") + 1);
    return name;
  }

  void greet() const {
    cout << "Hello, " << name << "!" << endl;
    cout << "Greetings from C++!" << endl;
  }
};

int main() {
  Greeter greeter;
  greeter.greet();
  return 0;
}
