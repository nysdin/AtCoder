n, m, p = gets.split.map(&:to_i)

def pow_mod(n, p, m)
  if p == 0
    return 1
  elsif p % 2 == 1
    return pow_mod(n, p-1, m) * n % m
  elsif p % 2 == 0
    t = pow_mod(n, p/2, m)
    return t * t % m
  end
end
puts pow_mod(n, p, m)
