s = gets.chomp
y = s[0,4].to_i
m = s[5,2].to_i
d = s[8,2].to_i
if y <= 2019 && m <= 4 && d <= d
  puts 'Heisei'
else
  puts 'TBD'
end
