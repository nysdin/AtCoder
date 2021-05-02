$n, $m , q = gets.split.map(&:to_i)
$ans = 0
$seq = []
q.times do |i|
  a, b, c, d = gets.split.map(&:to_i)
  $seq.push([a,b,c,d])
end

def calc(seq)
  now = 0
  $seq.each do |s|
    if seq[s[1]-1] - seq[s[0]-1] == s[2]
      now += s[3]
    end
  end
  $ans = now if now > $ans
end
#
def dfs(seq)
  if seq.length == $n
    calc(seq)
    return
  end
  val = seq[-1]
  while val <= $m
    seq.push(val)
    dfs(seq)
    val += 1
    seq.pop
  end
end
dfs([1])
puts $ans
