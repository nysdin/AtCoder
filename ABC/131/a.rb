s = gets.chomp
flag = true
3.times do |i|
  if s[i] == s[i+1]
    flag = false
  end
end
if flag
  puts 'Good'
else
  puts 'Bad'
end
