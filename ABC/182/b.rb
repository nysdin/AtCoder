n = gets.to_i
a = gets.split.map(&:to_i)
max = 0
ans = 0
2.upto(1000) do |i|
  now = 0
  a.each do |b|
    if b % i == 0
      now += 1
    end
  end
  if max < now
    ans = i
    max = now
  end
end
puts ans
