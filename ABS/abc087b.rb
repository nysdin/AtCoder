a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i
res = 0
(a+1).times do |i|
  (b+1).times do |j|
    (c+1).times do |k|
      if 500 * i + 100 * j + 50 * k == x
        res += 1
      end
    end
  end
end
puts res
