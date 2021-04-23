a, b = gets.split.map(&:to_i)
sa = 0
sb = 0
3.times do |i|
  sa += a % 10
  sb += b % 10
  a /= 10
  b /= 10
end
if sa > sb
  puts sa
else
  puts sb
end
