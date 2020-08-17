n, k = list(map(int, input().split()))
nums = [int(x) for x in input().split()]
nums = sorted(nums)
sum = 0
for i in range(k):
  sum += nums[i]
print(sum)
