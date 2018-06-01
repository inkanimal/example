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
        instance.temp
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
     #needs to have temp data with index +1 and a return to list
     #puts "The current temperature is "
  end

  def condition
    #needs to have current conditions with index(+1) and a return to list
    #puts "The weather outside is #{condition}."
  end

  def feels_temp
    #needs to have #{feels_temp} with index and a return to weather_list
    #puts "The current temperature feels like #{feels_temp}."
  end

  def wind
    #puts "The wind direction and speed are #{wind}."

  end

  def humidity
    #puts "The current Humidity is #{humidity}."
  end

  def dew_point
    #puts "The current Dew Point is #{dew_point}."
  end

  def pressure
    #puts "The Pressure is #{pressure}."
  end

  def visibility
    #puts "The current Visibility is #{visibility}."
  end

end
