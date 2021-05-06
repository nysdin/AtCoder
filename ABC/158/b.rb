n, a, b = gets.split.map(&:to_i)
amari = n % (a+b)
if amari > a
  amari = a
end
puts n/(a+b) * a + amari
