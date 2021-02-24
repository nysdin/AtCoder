n, q = gets.split.map(&:to_i)
$par = n.times.map {|i| i}
$rank = Array.new(n, 1)

def root(x)
  return x if $par[x] == x
  return root($par[x])
end

def unite(x, y)
  x = root(x)
  y = root(y)
  return if x == y
  if $rank[x] > $rank[y]
 	$par[y] = x
  else
    $par[x] = y
    if $rank[x] == $rank[y]
      $rank[y] +=1
    end
  end
end

def same(x, y)
  if root(x) == root(y)
    return true
  end
  return false
end

q.times do |i|
  p, a, b = gets.split.map(&:to_i)
  if p == 0
    unite(a, b)
  elsif p == 1
    if same(a, b)
      puts "Yes"
    else
      puts "No"
    end
  end
end
