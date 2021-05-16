a, b, k = gets.split.map(&:to_i)
c = 0
a.downto(1) do |n|
  if a % n == 0 && b % n == 0
    c += 1
  end
  if c == k
    puts n
    break
  end
end
