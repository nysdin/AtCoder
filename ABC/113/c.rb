n, m = gets.split.map(&:to_i)
e = Array.new(n+1).map{[]}
ans = Array.new(m)

def getid(x, y)
  s = []
  t = []
  6.times do |i|
    s.unshift((x % 10).to_s)
    t.unshift((y % 10).to_s)
    x /= 10
    y /= 10
  end
  (s + t).join
end

m.times do |i|
  a, b = gets.split.map(&:to_i)
  e[a].push([b, i])
end

(n+1).times do |i|
  b = e[i].sort_by{|i,j| i}
  e[i] = b
end

(n+1).times do |i| #iが県の番号
  list = e[i]
  list.each_with_index do |x, j| #jは県の中でその市が何番目に誕生したか
    id = getid(i, j+1)
    ans[x[1]] = id
  end
end
ans.each do |res|
  puts res
end
