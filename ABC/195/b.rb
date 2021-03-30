a, b, w = gets.split.map(&:to_i)
w = w * 1000
l = 10**8
m = 0
def min(a, b)
  if a > b
    return b
  end
  a
end

def max(a, b)
  if a > b
    return a
  end
  b
end

w.times do |i|
  if a * (i+1) <= w && w <= b * (i+1)
    l = min(l, i+1)
    m = max(m, i+1)
  end
end
if l == 10**8
  puts 'UNSATISFIABLE'
else
  puts "#{l} #{m}"
end
