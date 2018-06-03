class Cli

  def call
    get_zip
    weather_list
  end

  def get_zip
    # needs to get the users zip code and pass that to the scraper. needs to check is zip code is valid.
    input = ""
    while input != "exit"
     puts "Welcome to your Weather."
     puts "Please enter your zip code to see the weather in your area. Type exit at any point to leave the application."
     input = gets.strip
     zip = input.to_i  #(00704,99950)
     if zip.between?(00704,99950) == false
       puts "That is not a valid zip code. Please try again."
     end
  end

  def valid_zip?(zip)
    zip.between?(00704,99950)
  end


  def weather_list
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
# instance
      when "1"
        puts "The current temperature is #{WeatherMain.all.temp}." instance.temp
      when "2"
        puts "The current weather condition is #{WeatherMain.all.condition}."
      when "3"
        puts "The temperature #{WeatherMain.all.feels_temp}."feels_temp
      when "4"
        puts "The current wind conditions are #{WeatherMain.all.wind}."
      when "5"
        puts "The humidity is #{WeatherMain.all.humidity}."
      when "6"
        puts "The dew point is #{WeatherMain.all.dew_point}."
      when "7"
        puts "The current pressure is #{WeatherMain.all.pressure}."
      when "8"
        puts "#{WeatherMain.all.visibility} is the current visibility in your area."
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

end
