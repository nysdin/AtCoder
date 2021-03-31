puts gets.to_i

###
x = gets.chomp.chars
if n = x.find_index('.')
  ans = ''
  n.times do |i|
    ans += x[i]
  end
  puts ans
else
  puts x.join
end
###
