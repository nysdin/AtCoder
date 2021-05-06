a, b = gets.split.map(&:to_i)
a_x = []
b_x = []
ans = -1
1.upto(1270) do |x|
  if (x*0.1).to_i == b && (x*0.08).to_i == a
    ans = x
    break
  end
end
puts ans
