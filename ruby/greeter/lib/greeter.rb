class InputHandler
  def self.get_user_name
    print "Enter your name: "
    user_input = gets.chomp

    name = user_input.strip

    name = "Stranger" if name.empty?

    name
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
