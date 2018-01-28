class Station
  attr_reader :name, :trains
  def initialize(name)
    @name = name
    @trains = []
  end

  def add_train(train)
    @trains << train
  end

  def delete_train(train)
    @trains.delete(train)
  end

  def station_trains
    puts "Поездов на станции #{@trains.size}"
    if @trains.any?
      @train.each.with_index(1) do |train, x|
        puts "#{x}. Поезд #{train}"
      end
    end
  end
end
