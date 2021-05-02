n, m, x = gets.split.map(&:to_i)
ans = -1
book = n.times.map {gets.split.map(&:to_i)}
(1 << n).times do |i|
  ability = [0] * m
  now = 0
  n.times do |j|
    if ((i >> j) & 1) == 1
      now += book[j][0]
      m.times do |k|
        ability[k] += book[j][k+1]
      end
    end
  end
  flag = true
  ability.each do |a|
    if a < x
      flag =false
    end
  end
  if flag && (now < ans || ans == -1)
    ans = now
  end
end
puts ans
