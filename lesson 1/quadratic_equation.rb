print "Введите первый коэффициент"
a = gets.to_i
print "Введите второй коэффициент"
b = gets.to_i
print "Введите третий коэффициент"
c = gets.to_i
d = b**2-4*a*c
if d < 0
  puts "Дискриминант равен #{d}, корней нет"
elsif d > 0
  x1 = (-b + Math.sqrt(d))/(2*a)
  x2 = (-b - Math.sqrt(d))/(2*a)
  puts "Дискриминант равен #{d}, корни #{x1} и #{x2}"
else
  x1 = (-b + Math.sqrt(d))/(2*a)
  puts "Дискриминант равен #{d}, корень #{x1}"
end
