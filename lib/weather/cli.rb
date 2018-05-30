class Cli

  def call
    get_zip
    weather_conditions
  end

  def get_zip
    input = ""
    while input != "exit"
     puts "Welcome to your Weather."
     puts "Please enter your zip code to see the weather in your area. Type exit at any point to leave the application."
     input = gets.strip
    end

  def weather_conditions
    input = ""
    while input != "exit"
      puts "Please type in the number that corresponds to the weather condition that you would like to view."
      puts "1. Temperature
            2. Current conditions
            3. Feels like Temperature
            4. Wind
            5. Humidity
            6. Dew Point
            7. Pressure
            8. Visibility"
      input = gets.strip
      if input.between?(1,8) == false
        puts "That is an invalid entry. Please choose again."
      case input

      when "1"
        temp
      when "2"
        condition
      when "3"
        feels_temp
      when "4"
        wind
      when "5"
        humidity
      when "6"
        dew_point
      when "7"
        pressure
      when "8"
        visibility
      end
    end
  end

  def temp

  end
end
