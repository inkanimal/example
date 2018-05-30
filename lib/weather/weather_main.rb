class WeatherMain

  attr_accessor :temp, :condition, :feels_temp, :wind, :humidity, :dew_point, :pressure, :visibility

  @@all = []

  def intialize
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

end
