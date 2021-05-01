s = gets.chomp
t = gets.chomp
flag = true
(s.length).times do |i|
  if s[i] != t[i]
    flag = false
  end
end
if flag
  puts 'Yes'
else
  puts 'No'
end
