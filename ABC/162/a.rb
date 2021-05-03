n = gets.chomp
flag = false
3.times do |i|
  if n[i] == '7'
    flag = true
  end
end
if flag
  puts 'Yes'
else
  puts 'No'
end
