n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
ans = 0
n.times do |i|
  if a[i] > b[i]
    ans += b[i]
  else
    if a[i] + a[i+1] < b[i]
      ans += a[i] + a[i+1]
      a[i+1] = 0
    else
      ans += b[i]
      a[i+1] -= b[i] - a[i]
    end
  end
end
puts ans
