require_relative './manufacturer'
require_relative './instance_counter'
require_relative './train'
require_relative './carriage'
require_relative './cargo_carriage'
require_relative './passenger_carriage'
require_relative './cargo_train'
require_relative './passenger_train'
require_relative './route'
require_relative './station'
require_relative './controller'

puts 'Добро пожаловать в меню управления ЖД'
controller = Controller.new
controller.help
# controller.menu
