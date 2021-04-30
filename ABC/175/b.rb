n = gets.to_i
l = gets.split.map(&:to_i)
ans = 0
0.upto(n-1) do |i|
  (i+1).upto(n-1) do |j|
    (j+1).upto(n-1) do |k|
      a = l[i]
      b = l[j]
      c = l[k]
      if a == b || a == c || b == c
        next
      end
      
      if (b-c).abs < a && a < b+c
        ans += 1
      end
      
    end
  end
end
puts ans
