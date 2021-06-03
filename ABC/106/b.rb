N = gets.to_i
def solution(n)
  ans = 0
  1.upto(n) do |i|
    ans += 1 if n % i == 0
  end
  return ans
end
i = 1
ans = 0
while i <= N
  ans += 1 if solution(i) == 8
  i += 2
end
puts ans
