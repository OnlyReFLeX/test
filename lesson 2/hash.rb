vowels = {}
vowels_letter = %w(a e o u i)
('a'..'z').each.with_index(1) do |letter, x|
  vowels[letter] = x if vowels_letter.include?(letter)
end

puts vowels
