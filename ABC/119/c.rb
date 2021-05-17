$n, $a, $b, $c = gets.split.map(&:to_i)
$take = []
$n.times do |i|
  l = gets.to_i
  $take.push(l)
end
$ans = 10**9
$flag = Array.new($n, -1)
def dfs(depth)
  if depth == $n
    #p $flag
    nowa = 0
    nowb = 0
    nowc = 0
    ca = 0
    cb = 0
    cc = 0
    now = 0
    
    $flag.each_with_index do |m, i|
      if m == 1
        nowa += $take[i]
        ca += 1
      elsif m == 2
        nowb += $take[i]
        cb += 1
      elsif m == 3
        nowc += $take[i]
        cc += 1
      end
    end
    
    now += (ca-1+cb-1+cc-1)*10
   
    return if nowa == 0 || nowb == 0 || nowc == 0
    now += (nowa-$a).abs
    now += (nowb-$b).abs
    now += (nowc-$c).abs
    if $ans > now
      $ans = now
    end
    return
  end
  
  4.times do |i|
    $flag[depth] = i
    dfs(depth+1)
  end
end
dfs(0)
puts $ans
