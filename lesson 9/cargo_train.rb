class CargoTrain < Train
  validate :number, :type, String
  validate :number, :presence
  validate :number, :format, NUMBER_TYPE

  def type
    'грузовой'
  end

  def add_carriage(carriage)
    @carriages << carriage if carriage.is_a? CargoCarriage
  end
end
