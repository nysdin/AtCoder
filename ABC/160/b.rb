x = gets.to_i
ans = 0
ans += 1000 * (x / 500)
x %= 500
ans += 5 * (x / 5)
puts ans 
