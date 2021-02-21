n = gets.to_i
t = 0
x = 0
y = 0
res = true
n.times do |i|
  nt, nx, ny = gets.split.map(&:to_i)
  dt = nt - t
  len = (nx - x).abs + (ny - y).abs
  if len > dt
    res = false
    break
  end
  if len % 2 != dt % 2
    res = false
    break
  end
  t = nt
  x = nx
  y = ny
end
if res
  puts "Yes"
else
  puts "No"
end
