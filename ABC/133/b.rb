n, d = gets.split.map(&:to_i)
crd = []
ans = 0
n.times do |i|
  x = gets.split.map(&:to_i)
  crd.push(x)
end
n.times do |i|
  (i+1).upto(n-1) do |j|
    x = crd[i]
    y = crd[j]
    sum = 0
    d.times do |k|
      sum += (x[k] - y[k])**2
    end
    sum = Math.sqrt(sum)
    if sum.to_i.to_f == sum
      ans += 1
    end
  end
end
puts ans
