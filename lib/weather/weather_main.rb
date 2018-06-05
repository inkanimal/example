class WeatherMain

  attr_accessor :temp, :condition, :feels_temp, :wind, :humidity, :dew_point, :pressure, :visibility

  @@all = []

  def initialize
    @temp = temp
    @condition = condition
    @feels_temp = temp
    @wind = wind
    @humidity = humidity
    @dew_point = dew_point
    @pressure = pressure
    @visibility = visibility
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  # def initialize(input = "")
  #   @input = input
  # end
  #
  # def zip_code(input)
  #   input = gets.strip
  #   zip = input.to_i
  # end
  #
  # def zip_valid?(zip_code)
  #   if zip_code.between?(00704,99950) == false
  #     puts "That is not a valid zip code. Please enter another zip code."
  #   else
  #     zip_code
  #   end
  # end
end
