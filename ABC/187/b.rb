n = gets.to_i
a = []
ans = 0

n.times do |i|
  x, y = gets.split.map(&:to_i)
  a.push([x,y])
end
n.times do |i|
  (i+1).upto(n-1) do |j|
    l = 1.0 * (a[i][1] - a[j][1]) / (a[i][0] - a[j][0])
    if -1 <= l && l <= 1
      ans += 1
    end
  end
end
puts ans
