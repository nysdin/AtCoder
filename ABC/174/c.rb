require 'set'
k = gets.to_i
ans = 1
num = 7
amari = Set.new
k.times do |i|
  if num % k == 0
    break
  end
  ans += 1
  if amari.include?(num % k)
    ans = -1
    break
  end
  amari.add(num % k)
  num = (10 * num + 7) % k
end
puts ans
