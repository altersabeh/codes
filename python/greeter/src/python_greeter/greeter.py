class InputHandler:
  @staticmethod
  def get_user_name():
    username = input("Enter your name: ")

    name = username.strip()

    if name == "":
      name = "Stranger"

    return name

class Greeter:
  def __init__(self, name):
    self.username = name

  def greet(self):
    print(f"Hello, {self.username}!")
    print("Greetings from Python!")

def main():
  name = InputHandler.get_user_name()
  greeter = Greeter(name)
  greeter.greet()

if __name__ == "__main__":
  main()
