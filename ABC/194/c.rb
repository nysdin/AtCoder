n = gets.to_i
seq = gets.split.map(&:to_i)
maxA = 200
d = [0] * (maxA*2 + 1)
ans = 0
n.times do |i|
  d[seq[i]+maxA] += 1
end
(-maxA+1).upto(maxA) do |i|
  (-maxA).upto(i-1) do |j|
    ans += (i - j)**2 * d[i+maxA] * d[j+maxA]
  end
end
puts ans
