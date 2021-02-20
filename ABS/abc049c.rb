str = gets.chomp
ts = ['dream', 'dreamer', 'erase', 'eraser']
dp = [false] * (str.length + 1)
dp[0] = true
(str.length+1).times do |i|
  if !dp[i]
    next
  end
  ts.each do |t|
    n = t.length
    if str[i...(i+n)] == t
      dp[i+n] = true
    end
  end
end
if dp[str.length]
  puts 'YES'
else
  puts 'NO'
end

### Use BFS ###
###
str = gets.chomp
ts = ['dream', 'dreamer', 'erase', 'eraser']
todo = []
todo.push(0)
res = false
while !todo.empty?
  i = todo.shift
  if i == str.length
    res = true
    break
  end
  ts.each do |t|
    n = t.length
    if str[i...(i+n)] == t
    	todo.push(i+n)
    end
  end
end
if res
  puts 'YES'
else
  puts 'NO'
end
###
