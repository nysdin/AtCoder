n = gets.chomp.to_s
keta = n.length
$n = n.to_i
stack = ['7', '5', '3']
ans = 0
def check(ns)
  if ns.include?('7') && ns.include?('5') && ns.include?('3')
    if ns.to_i <= $n
      return true
    else
      return false
    end
  end
end

while !stack.empty?
  now = stack.shift
  if now.length == keta
    ans += 1 if check(now)
    next
  end
  ans += 1 if check(now)
  ['7', '5', '3'].each do |n|
    cp = now.dup
    stack.push(cp << n)
  end
end
puts ans
