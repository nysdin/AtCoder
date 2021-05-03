k = gets.to_i
ans = 0

1.upto(k) do |l|
  1.upto(k) do |m|
    1.upto(k) do |n|
      ans += l.gcd(m).gcd(n)
    end
  end
end
puts ans
