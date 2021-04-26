a, b = gets.split.map(&:to_i)
c, d = gets.split.map(&:to_i)
ans = 0
nowa= a
nowb = b
def near(a, b, c, d)
  if (a-c).abs - (b-d).abs
    true
  end
  return false
end

if a == c && b == d
  ans = 0
elsif (a - c).abs + (b - d).abs <= 3
  ans = 1
elsif a + b == c + d || a - b == c - d
  ans = 1
elsif (a - c).abs + (b - d).abs <= 6
  ans = 2
elsif (a + b) % 2 == (c + d) % 2
  ans = 2
elsif ((a + b) - (c + d)).abs <= 3
  ans = 2
elsif ((a - b) - (c -  d)).abs <= 3
  ans = 2
else
  ans = 3
end

puts ans
  
