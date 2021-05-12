a, b, c, d = gets.split.map(&:to_i)
all = b/c + b/d - b/(c.lcm(d))
part = (a-1)/c + (a-1)/d - (a-1)/(c.lcm(d))
puts b - a + 1 - (all - part)
