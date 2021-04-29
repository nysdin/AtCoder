n = gets.to_i
m = Math.sqrt(n).to_i
yakusuu = []
1.upto(m) do |i|
  if n % i == 0
    if i == n / i
      yakusuu.push(i)
    else
      yakusuu.push(i)
      yakusuu.push(n / i)
    end
  end
end
yakusuu.sort!
puts yakusuu
