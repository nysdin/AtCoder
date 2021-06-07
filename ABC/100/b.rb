D, N = gets.split.map(&:to_i)
if D == 0
  if N == 100
    puts 101
  else
    puts N
  end
else
  if N == 100
    puts 100**(D+1) + 100**D
  else
    puts 100**D * N
  end
end
