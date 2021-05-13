a = []
5.times do |i|
  b = gets.to_i
  a.push(b)
end
flag = true
k = gets.to_i
len = a[-1] - a[0]
if len <= k
  puts "Yay!"
else
  puts ":("
end
