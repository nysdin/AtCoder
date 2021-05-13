n = gets.to_i
a = gets.split.map(&:to_i)

class Segtree
  attr_accessor :segtree, :leaf
  def initialize(n)
    @leaf = 1
    while leaf < n
      @leaf *= 2
    end
    @segtree = Array.new(2*leaf-1, 0)
  end
  
  def update(i, x)
    i = i + @leaf - 1
    @segtree[i] = x
    while i > 0
      i = (i-1)/2
      @segtree[i] = @segtree[2*i+1].gcd(@segtree[2*i+2])
    end
  end
  
  def query(a, b, k=0, l=0, r=@leaf) #[l,r)
    return 0 if r <= a || b <= l
    if a <= l && r <= b
      return @segtree[k]
    else
      c1 = query(a, b, 2*k+1, l, (l+r)/2)
      c2 = query(a, b, 2*k+2, (l+r)/2, r)
      return c1.gcd(c2)
    end
  end   
end

ans = -1
st = Segtree.new(n)
n.times do |i|
  st.update(i, a[i])
end
n.times do |i|
  if i == 0
    now = st.query(i+1, st.leaf)
    ans = now if now > ans
  elsif i == n - 1
    now = st.query(0, i)
  else
    left = st.query(0,i)
    right = st.query(i+1, st.leaf)
    now = left.gcd(right)
  end
  ans = now if now > ans
end
puts ans
