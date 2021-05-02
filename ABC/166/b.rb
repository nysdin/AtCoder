n, k = gets.split.map(&:to_i)
snuke = Array.new(n) {Array.new(k, false)}
ans = 0
k.times do |i|
  d = gets.to_i
  a = gets.split.map(&:to_i)
  a.each do |b|
    snuke[b-1][i] = true
  end
end
snuke.each do |p|
  flag = false
  p.each do |item|
    if item == true
      flag = true
    end
  end
  ans += 1 if flag == false
end
puts ans
