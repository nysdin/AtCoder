n = gets.to_i
h = gets.split.map(&:to_i)
h.push(0)
h.unshift(0)
cur = Array.new(n, 0)
ans = 0
100.times do |_|
  1.upto(n+1) do |i|
    if h[i] == 0
      if h[i-1] != 0
        ans += 1
      end
    end
  end
  1.upto(n) do |i|
    h[i] -= 1if h[i] != 0
  end
end
puts ans
