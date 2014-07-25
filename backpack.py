# parameters
weight = [2, 1 ,3, 2, 1]
value = [12, 10, 20, 15, 8]
capacity = 5
# dynamic programming
num = len(weight)
opt = [0]*(capacity+1)
optori = [0]*(capacity+1)
for i in range(0,num):
	for j in range(0,capacity+1):
		optori[j] = opt[j]
	for j in range(0,capacity+1-weight[i]):
		if optori[j+weight[i]] < optori[j]+value[i]:
			opt[j+weight[i]] = optori[j]+value[i]
		print opt
print opt[capacity]
