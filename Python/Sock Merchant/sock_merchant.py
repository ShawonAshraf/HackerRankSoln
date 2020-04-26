import collections as c

n = int(input())

ar = list(map(int, input().rstrip().split()))

counts = c.Counter(ar)

matching_pairs = 0
for k in counts.keys():
    current = int(counts[k] / 2)
    matching_pairs = matching_pairs + current

print(matching_pairs)
