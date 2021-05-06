n, m = gets.split.map(&:to_i)
ans = -1
ms = m.times.map {gets.split.map(&:to_i)}
start = 10**(n-1)
final = 10**n - 1
start = 0 if n == 1
start.upto(final) do |x|
  flag = true
  ms.each do |sc|
    s, c = sc
    tmp = x
    (n-s).times do |j|
      tmp /= 10
    end
    tmp %= 10
    if tmp != c
      flag = false
    end
  end
  if flag
    ans = x
    break
  end
end
puts ans
