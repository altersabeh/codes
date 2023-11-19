class InputHandler
  def self.get_user_name
    print "Enter your name: "
    user_input = gets.chomp

    user_input.strip
  end
end

class Greeter
  def initialize(name)
    @username = name
  end

  def greet
    puts "Hello, #{@username}!"
    puts "Greetings from Ruby!"
  end
end

def main
  name = InputHandler.get_user_name
  greeter = Greeter.new(name)

  greeter.greet
end

main
