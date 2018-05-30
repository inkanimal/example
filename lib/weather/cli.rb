class Cli

  def call

  end

  def get_zip
    input = ""
    puts "Welcome to your Weather."
    puts "Please enter your zip code to see the weather in your area. Type exit at any point to leave the application."
    while input != "exit"
    input = gets.strip

  end
end
