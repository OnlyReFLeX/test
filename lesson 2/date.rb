print 'Введите день: '
day = gets.to_i
print 'Введите месяц: '
month = gets.to_i
print 'Введите год: '
year = gets.to_i

default_months =  [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
  default_months[1] = 29
end

selected_months = default_months.first(month - 1)

result = 0
selected_months.each do |days|
  result += days
end
result += day

puts "День #{result} по счету с начала года"
