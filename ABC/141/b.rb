s = gets.chomp
n = s.length
flag = true
n.times do |i|
  if i % 2 == 0
    if s[i] == 'R' || s[i] == 'U' || s[i] == 'D'
    else
      flag = false
    end
  else
    if s[i] == 'L' || s[i] == 'U' || s[i] == 'D'
    else
      flag = false
    end
  end
end
if flag
  puts 'Yes'
else
  puts 'No'
end
