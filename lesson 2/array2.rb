array = [0, 1]

loop do
  result = array[-1] + array[-2]
  break if result > 100
  array << result
end

puts array
