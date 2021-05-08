n = gets.to_i
s = gets.chomp.chars
len = s.length
alphabet = ('A'..'Z').to_a
len.times do |i|
  index = alphabet.index(s[i])
  s[i] = alphabet[(index+n)%26]
end
puts s.join
