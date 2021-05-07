n, k, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
sum = a.sum
score = n*m - sum
if score < 0
  puts 0
elsif 0 <= score && score <= k
  puts score
else
  puts -1
end
