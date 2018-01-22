print 'Как вас зовут?'
name = gets.chomp.capitalize
print 'Какой у вас рост?'
growth = gets.to_f
ideal_weight = growth - 110
if ideal_weight < 0
  puts "#{name}, Ваш вес уже оптимальный"
else
  puts "Идеальный вес для вас это #{ideal_weight}"
end
