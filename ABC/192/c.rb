n, k = gets.split.map(&:to_i)
def g1(x)
  nums = []
  while x > 0
    nums.push(x % 10)
    x = x / 10
  end
  nums.sort!
  a = 0
  nums.each_with_index do |n, i|
    a += n * 10 ** i
  end
  return a
end

def g2(x)
  nums = []
  while x > 0
    if x % 10 != 0
      nums.push(x % 10)
    end
    x = x / 10
  end
  if nums.empty?
    nums.push(0)
  end
  nums.sort!.reverse!
  a = 0
  nums.each_with_index do |n, i|
    a += n * 10 ** i
  end
  return a
end
k.times { n = g1(n) - g2(n) }
puts n
