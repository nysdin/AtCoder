require 'set'
s = gets.to_i
i = 1
now = 0
nums = Set.new
def f(n)
  if n % 2 == 0
    n / 2
  else
    3*n + 1
  end
end
while true
  if i == 1
    now = s
  else
    now = f(now)
  end
  if nums.include?(now)
    puts i
    return
  else
    nums.add(now)
  end
  i += 1
end
