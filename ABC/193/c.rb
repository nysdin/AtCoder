require 'set'
n = gets.to_i
m = Math.sqrt(n).to_i
s = Set.new
2.upto(m) do |i|
  x = i * i
  while (x <= n)
    s.add(x)
    x *= i
  end
end
puts n - s.length
