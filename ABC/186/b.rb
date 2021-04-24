h, w = gets.split.map(&:to_i)
mass = []
min = 1000
ans = 0
h.times do |i|
  line = gets.split.map(&:to_i)
  now = line.min()
  mass. push(line)
  if min > now
    min = now
  end
end
mass.each do |l|
  l.each do |c|
    ans += c - min
  end
end
puts ans
