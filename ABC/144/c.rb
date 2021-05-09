n = gets.to_i
r = Math.sqrt(n).to_i
ans = -1
1.upto(r) do |m|
  if n % m == 0
    l = n / m
    sum = l + m - 2
    if sum < ans || ans == -1
      ans = sum
    end
  end
end
puts ans
