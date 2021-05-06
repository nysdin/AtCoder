n = gets.to_i
x = gets.split.map(&:to_i)
ans = 1000000000
1.upto(100) do |p|
  cost = 0
  x.each do |c|
    cost += (p-c)*(p-c)
  end
  ans = cost if ans > cost
end
puts ans
