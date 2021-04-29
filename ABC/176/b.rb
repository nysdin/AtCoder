n = gets.chomp
sum = 0
n.chars.each do |i|
  sum += i.to_i
end
if sum % 9 == 0
  puts 'Yes'
else
  puts 'No'
end
