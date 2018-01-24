vowels = {}
vowels_letter = %w(a e o u i)
('a'..'z').each_with_index do |letter, x|
  if vowels_letter.include?(letter)
    vowels[letter] = x + 1
  end
end

puts vowels
