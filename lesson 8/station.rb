class Station
  include Validation
  @@stations = []
  attr_reader :name, :trains

  def self.all
    @@stations
  end

  def initialize(name)
    @name = name
    validate!
    @trains = []
    @@stations << self
  end

  def add_train(train)
    @trains << train
  end

  def delete_train(train)
    @trains.delete(train)
  end

  def station_trains
    puts "Поездов на станции #{@trains.size}"
    return unless @trains.any?
    @trains.each.with_index(1) do |train, x|
      puts "#{x}. Поезд #{train.number}"
    end
  end

  def each_train
    @trains.each { |train| yield(train) } unless @trains.empty?
  end

  private

  def validate!
    raise 'Название не может быть пустым' if @name == ''
    raise 'Слишком большое название' if @name.length > 20
    if @@stations.map(&:name).include?(name) && !@@stations.include?(self)
      raise 'Такая станция уже существует'
    end
    true
  end
end
