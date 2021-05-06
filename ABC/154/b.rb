s = gets.chomp
s = s.chars
(s.length).times do |i|
  s[i] = 'x'
end
puts s.join()
