n, k = gets.split.map(&:to_i)
kk = n / k
if k % 2 == 0
  k2 = (n + k/2)/k
  puts kk*kk*kk + k2*k2*k2
else
  puts kk*kk*kk
end
