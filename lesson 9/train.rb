class Train
  include Manufacturer
  include InstanceCounter
  include Validation
  include Accessors

  NUMBER_TYPE = /^[a-zа-я0-9]{3}-?[a-zа-я0-9]{2}$/i

  attr_reader :carriages, :station, :number, :speed, :route
  attr_accessor_with_history :hello, :helloa
  strong_attr_accessor(:str, String)
  @@trains = {}

  validate :number, :presence
  validate :number, :type, String
  validate :number, :format, NUMBER_TYPE

  def self.find(number)
    @@trains[number]
  end

  def initialize(number)
    @number = number
    validate!
    @carriages = []
    @speed = 0
    @route_index = 0
    @@trains[self.number] = self
    register_instance
  end

  def route=(route)
    current_station.delete_train(self) unless @route.nil?
    @route_index = 0
    @route = route
    current_station.add_train(self)
  end

  def brake
    @speed = 0
  end

  def add_speed
    @speed += 10
  end

  def reduce_speed
    @speed -= 10 if speed > 0
  end

  def del_carriage
    @carriages.delete_at(0)
  end

  def forward
    if current_station == @route.stations.last
      puts 'Вы на конечной станции'
    else
      current_station.delete_train(self)
      @route_index += 1
      current_station.add_train(self)
    end
  end

  def backward
    if current_station == @route.stations.first
      puts 'Вы на начальной станции'
    else
      current_station.delete_train(self)
      @route_index -= 1
      current_station.add_train(self)
    end
  end

  def next_station
    @route.stations[@route_index + 1]
  end

  def prev_station
    @route.stations[@route_index - 1]
  end

  def current_station
    @route.stations[@route_index]
  end

  def each_carriage
    @carriages.each.with_index(1) do |carriage, x|
      yield(carriage, x) unless @carriages.empty?
    end
  end
end
