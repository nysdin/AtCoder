n, m = gets.split.map(&:to_i)
conditions = m.times.map { gets.split.map(&:to_i) }
k = gets.to_i
todos = k.times.map { gets.split.map(&:to_i) }
ans = 0
(1 << k).times do |bit|
  dishes = [0] * (n+1)
  now = 0
  k.times do |i|
    if (bit >> i) & 1 == 0
      dishes[todos[i][0]] += 1
    else
      dishes[todos[i][1]] += 1
    end
  end
  m.times do |i|
    c = conditions[i][0]
    d = conditions[i][1]
    if dishes[c] > 0 && dishes[d] > 0
      now += 1
    end
  end
  ans = now if now > ans
end
puts ans
