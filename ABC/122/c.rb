n, q = gets.split.map(&:to_i)
s = gets.chomp
lr = []
seq = Array.new(n+1, 0)
q.times do |_|
  l, r = gets.split.map(&:to_i)
  lr.push([l,r])
end
1.upto(n-1) do |i|
  if s[i-1] == 'A' && s[i] == 'C'
    seq[i] = seq[i-1] + 1
  else
    seq[i] = seq[i-1]
  end
end
lr.each do |l, r|
  ans = seq[r-1] - seq[l-1]
  puts ans
end
