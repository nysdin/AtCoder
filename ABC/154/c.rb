n = gets.to_i
a = gets.split.map(&:to_i)
a.sort!
flag = true
(n-1).times do |i|
  if a[i] == a[i+1]
    flag = false
  end
end
if flag
  puts 'YES'
else
  puts 'NO'
end
