require_relative './train'
require_relative './cargo_carriage'
require_relative './passenger_carriage'
require_relative './cargo_train'
require_relative './passenger_train'
require_relative './route'
require_relative './station'
require_relative './function'

@trains = []
@routes = []
@stations = []


puts 'Добро пожаловать в меню управления ЖД'
help
loop do
  print 'Выберите пункт '
  choice = gets.chomp
  case choice
  when '1'
    create_station
  when '2'
    create_train
  when '3'
    create_route
  when '4'
    control_route
  when '5'
    set_route
  when '6'
    add_carriage
  when '7'
    delete_carriage
  when '8'
    control_train
  when '9'
    show_stations
  when '10'
    show_station_trains
  when 'exit', '11'
    exit
  when 'help'
    help
  else
    puts 'Неправильная команда, используйте help для помощи'
  end
end
