print 'Как вас зовут?'
name = gets.chomp.capitalize
print 'Какой у вас вес?'
weight = gets.to_i
puts "#{name}, Ваш вес уже оптимальный" if (weight - 110) < 0
