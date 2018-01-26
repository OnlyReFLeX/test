class Route
  attr_reader :name, :route
  def initialize(station_start, station_end)
    @route = [station_start, station_end]
    @name = "#{station_start.name}-#{station_end.name}"
  end

  def add_station(station)
    @route.insert(-2, station)
  end

  def delete_station(station)
    @route.delete(station)
  end

  def all_station
    @route.each { |station| puts station.name }
  end
end
