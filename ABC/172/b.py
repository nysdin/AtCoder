s = input()
t = input()
count = 0
for i, str in enumerate(s):
  if str != t[i]:
    count += 1
print(count)
