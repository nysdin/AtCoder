n = gets.to_i
ans = 0
digit = n.to_s.length
digit.downto(2) do |d|
  if d % 2 != 0
    next
  end
  half = d / 2
  from = 10 ** (half-1)
  to = 10 ** half
  if d != digit
    ans += to - from
  else
    first = n / (10**half)
    last = n % (10**half)
    ans += first - from
    ans += 1 if first <= last
  end
end
puts ans
