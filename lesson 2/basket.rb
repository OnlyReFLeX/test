basket = {}

loop do
  print 'Какой товар вы хотите добавить: '
  product = gets.chomp
  break if product == 'стоп'
  print 'Цена за товар: '
  price = gets.to_f
  print 'Количество товара: '
  quantity = gets.to_f
  basket[product] = { price: price, quantity: quantity }
end

sum = 0
total = 0

basket.each do |product, value|
  sum = value[:price] * value[:quantity]
  puts "Продукт #{product}, цена: #{value[:price]}, количество #{value[:quantity]}, сумма: #{sum}"
  total += sum
end

puts "Общая сумма: #{total}"
