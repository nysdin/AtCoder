n, k = gets.split.map(&:to_i)
t = n.times.map{|i| gets.split.map(&:to_i)}
ans = 0
arr = (1..n-1).to_a
arr.permutation.to_a.each do |root|
  sum = 0
  root.push(0)
  root.unshift(0)
  n.times do |i|
    sum += t[root[i]][root[i+1]]
  end
  if sum == k
    ans += 1
  end
end
puts ans
