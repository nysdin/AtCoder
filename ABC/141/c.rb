n, k, q = gets.split.map(&:to_i)
ansers = Array.new(n+1, 0)
ans = 0
q.times do |i|
  a = gets.to_i
  ansers[a] += 1
end
1.upto(n) do |i|
  a = ansers[i]
  if k - (q - a) > 0
    puts 'Yes'
  else
    puts 'No'
  end
end
