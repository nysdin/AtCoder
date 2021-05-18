n, m = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)
x.sort!
lens = []
(m-1).times do |i|
  lens.push(x[i+1]-x[i])
end
lens.sort!
if n >= m
  puts 0
else
  ans = 0
  (m-n).times do |i|
    ans += lens[i]
  end
end
puts ans
