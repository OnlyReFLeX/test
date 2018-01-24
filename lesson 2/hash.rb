vowels = {}
x = 0

('a'..'z').each do |letter|
  x += 1
  if %w(a e o u i).include?(letter)
    vowels[letter] = x
  end
end

puts vowels
