print "Введите первую сторону"
a = gets.to_f**2
print "Введите вторую сторону"
b = gets.to_f**2
print "Введите третью сторону"
c = gets.to_f**2

if a == b && b == c
  puts "Треугольник равнобедренный и равносторонний, но не прямоугольный."
else
  if a > b && a > c
    hypotenuse = a
    first = b
    second = c
  elsif b > a && b > c
    hypotenuse = b
    first = a
    second = c
  elsif c > a && c > b
    hypotenuse = c
    first = a
    second = b
  end
  if hypotenuse == (first + second)
    puts "Треугольник прямоугольный"
    puts "и при этом он равнобедренный" if (a == b) || (b == c) || (c == a)
  end
end
