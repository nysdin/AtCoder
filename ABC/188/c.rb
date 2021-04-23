n = gets.to_i
a = gets.split.map(&:to_i)
copy = a
b = []
if n == 1
  b = a
end

(n-1).times do |i|
  len = 2 ** (n-i)
  b = []
  (len/2).times do |i|
    if a[2*i] > a[2*i+1]
      b.push(a[2*i])
    else
      b.push(a[2*i+1])
    end
  end
  a = b
end
if b[0] > b[1]
  ans = b[1]
else
  ans = b[0]
end

puts copy.index(ans) + 1
