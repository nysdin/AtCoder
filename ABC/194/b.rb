n = gets.to_i
ans = 10**6
same = 10**6
as = []
bs = []
def max(a, b)
  if a > b
    return a
  else
    return b
  end
end
n.times do |i|
  n, m = gets.split.map(&:to_i)
  as.push(n)
  bs.push(m)
end
as.each_with_index do |a, i|
  bs.each_with_index do |b, j|
    if i == j && same > a + b
      same = a + b
    end
    if max(a, b) < ans && i != j
      ans = max(a, b)
    end
  end
end
if same > ans
  puts ans
else
  puts same
end

  
