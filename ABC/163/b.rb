n, m = gets.split.map(&:to_i)
work = gets.split.map(&:to_i)
work.each do |t|
  n -= t
end
if n < 0
  puts -1
else
  puts n
end
