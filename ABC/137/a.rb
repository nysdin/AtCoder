a, b = gets.split.map(&:to_i)
ans = []
ans.push(a+b)
ans.push(a-b)
ans.push(a*b)
puts ans.max
