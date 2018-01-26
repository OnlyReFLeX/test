class Train
  attr_accessor :speed, :route
  attr_reader :carriages, :station, :number, :type
  def initialize(number, type, carriages)
    @number = number
    @type = type.to_sym
    @carriages = carriages
    @speed = 0
    @route_index = 0
  end

  def brake
    @speed = 0
  end

  def add_carriage
    @carriages += 1 if speed == 0
  end

  def del_carriage
    @carriages -= 1 if speed == 0 && carriages > 0
  end

  def forward
    if current_station == @route.route.last
      puts "Вы на конечной станции"
    else
      current_station.delete_train(self)
      next_station.add_train(self)
      @route_index += 1
    end
  end

  def backward
    if current_station == @route.route.first
      puts "Вы на начальной станции"
    else
      current_station.delete_train(self)
      prev_station.add_train(self)
      @route_index -= 1
    end
  end

  def next_station
    @route.route[@route_index + 1]
  end

  def prev_station
    @route.route[@route_index - 1]
  end

  def current_station
    @route.route[@route_index]
  end
end
