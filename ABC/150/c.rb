n = gets.to_i
$p = gets.chomp.split.join
$q = gets.chomp.split.join
$index = 0
$p_num = 0
$q_num = 0
stack = n.times.map {|m| (m+1).to_s}
def rec(stack, now)
  if stack.empty?
    $index += 1
    if now == $p
      $p_num = $index
    end
    if now == $q
      $q_num = $index
    end
  end
  stack.each do |s|
    copy_stack = stack.dup
    copy_now = now.dup
    copy_stack.delete(s)
    copy_now += s
    rec(copy_stack, copy_now) 
  end
end
rec(stack, "")
puts ($p_num - $q_num).abs
