n = gets.to_i
s = gets.chomp
if n % 2 == 0
  half = n / 2
  t = s[0,half]
  s = s[half, half]
  if s == t
    puts 'Yes'
  else
    puts 'No'
  end
else
  puts 'No'
end
