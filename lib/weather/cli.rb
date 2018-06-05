require_relative './scraper.rb'

class Cli

  # def initialize
  #  self.start
  # end

  def start
    zip = get_zip
    weather_data = Scraper.scrape_weather(zip)
    weather_list(weather_data)
  end

  def get_zip
    puts "              | Welcome to Weather |                 "
    # needs to get the users zip code and pass that to the scraper. needs to check is zip code is valid.
    input = ""
    retreived_value_zip = false
    while retreived_value_zip == false
     puts "Please enter your zip code to see the weather in your area."
     input = gets.strip
     zip = input.to_i  #(00704,99950)
     if zip.between?(00704,99950) == false
       puts "That is not a valid zip code. Please try again."
     else
       retreived_value_zip = true
     end
   end
   zip
  end

  def weather_list(weather_data)
    input = ""
    while input != "9"
      puts "Please type in the number that corresponds to the weather condition that you would like to view. To exit, please type 9."
      puts "            1. Temperature
            2. Current conditions
            3. Feels like Temperature
            4. Wind
            5. Humidity
            6. Dew Point
            7. Pressure
            8. Visibility
            9. Exit"

      input = gets.strip
      if input.to_i.between?(1,9) == false
        puts "That is an invalid entry. Please choose again."
      else
      case input
# instance
      when "1"
        puts "The current temperature is #{weather_data.temp}."
      when "2"
        puts "The current weather condition is #{weather_data.condition}."
      when "3"
        puts "The temperature #{weather_data.feels_temp}."
      when "4"
        puts "The current wind direction and speed are #{weather_data.wind.strip}."
      when "5"
        puts "The humidity is #{weather_data.humidity}."
      when "6"
        puts "The dew point is #{weather_data.dew_point}."
      when "7"
        puts "The current pressure is #{weather_data.pressure.strip}."
      when "8"
        puts "#{weather_data.visibility} is the current visibility in your area."
      when "9"
        puts "Thank you for using Weather. Goodbye."
      else
        puts "Not a valid choice."
      end
    end
  end

  def return
    input = ""
    puts "If you would like to return to the weather conditions list, please type return."
    input = gets.strip
    if input == "return"
      weather_list
    else
      input == "exit"
      get_zip
    end
  end

  def testtest
    print "called test method"
  end
end


mycli = Cli.new
mycli.start
end
