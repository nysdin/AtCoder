n, k = gets.split.map(&:to_i)
t = n.times.map{|i| gets.split.map(&:to_i)}
ans = 0
arr = (1..n-1).to_a
arr.permutation.to_a.each do |root|
  sum = 0
  root.push(0)
  root.unshift(0)
  n.times do |i|
    sum += t[root[i]][root[i+1]]
  end
  if sum == k
    ans += 1
  end
end
puts ans

####### 自作順列
def my_permutation(arr)
  result = []
  permutation(arr, arr.size, [], result)
  return result
end

def permutation(arr, size = nil, tmp = [], result = [])
  size = arr.size if size.nil?
  if size == 0
    result.push(tmp)
    return
  end
  
  0.upto(size-1) do |i|
    copy = arr.dup
    copy.delete_at(i)
    tmp_dup = tmp.dup
    tmp_dup.push(arr[i])
    permutation(copy, copy.size, tmp_dup, result)
  end
end
########
