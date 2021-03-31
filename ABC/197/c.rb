n = gets.to_i
ans = 10**10
seq = gets.split.map(&:to_i)
m = 1 << (n-1)
m.times do |bit|
  now = 0
  xor = 0
  n.times do |i|
    now |= seq[i]
    if (bit >> i) & 1 == 1
      xor ^= now
      now = 0
    end
  end
  xor ^= now
  ans = xor if ans > xor
end
puts ans
