vowels = {}
vowels_letter = %w(a e o u i)
('a'..'z').each_with_index do |letter, x|
  vowels[letter] = x + 1 if vowels_letter.include?(letter)
end

puts vowels
