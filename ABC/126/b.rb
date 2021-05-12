s = gets.chomp
a = s[0,2].to_i
b = s[2,2].to_i
if 1 <= a && a <= 12 && 1 <= b && b <= 12
  puts 'AMBIGUOUS'
elsif 1 <= a && a <= 12
  puts 'MMYY'
elsif 1 <= b && b <= 12
  puts 'YYMM'
else
  puts 'NA'
end
