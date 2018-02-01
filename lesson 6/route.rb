class Route
  include Validation
  attr_reader :name, :stations
  def initialize(station_start, station_end)
    @stations = [station_start, station_end]
    validate!
    @name = "#{station_start.name}-#{station_end.name}"
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def delete_station(station)
    @stations.delete(station)
  end

  def show_stations
    @stations.each.with_index(1) do |station, x|
      puts "#{x}. #{station.name}"
    end
  end

  private

  def validate!
    raise 'Переданы неверные аргументы' if @stations[0].class != Station || @stations[-1].class != Station
    true
  end
end
