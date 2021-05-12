n, m = gets.split.map(&:to_i)
k = []
s = []
ans = 0
m.times do |i|
  v, *w = gets.split.map(&:to_i)
  k.push(v)
  s.push(w)
end
q = gets.split.map(&:to_i)
(1<<n).times do |i|
  flag = true
  on = Array.new(n,false)
  n.times do |j|
    if (i>>j)&1 == 1
      on[j] = true
    end
  end
  m.times do |j|
    on_num = 0
    s[j].each do |k|
      if on[k-1] == true
        on_num += 1
      end
    end
    if on_num % 2 != q[j]
      flag = false
      break
    end
  end
  ans += 1 if flag
end
puts ans
