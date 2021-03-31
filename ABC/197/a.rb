s = gets.chomp.chars
first = s[0]
1.upto(s.length-1) do |i|
  s[i-1] = s[i]
end
s[s.length-1] = first
puts s.join
