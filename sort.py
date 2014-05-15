def sort_bubble(array):
	for i in range(0,len(array)-1):
		for j in range(len(array)-1,i,-1):
			if array[j]<array[j-1]:
				temp=array[j]
				array[j]=array[j-1]
				array[j-1]=temp
			print array
	return array

def sort_insert(array):
	for i in range(1,len(array)):
		temp=array[i]
		for j in range(i,0,-1):
			if array[j-1]>temp:
				array[j]=array[j-1]
			else:
				array[j]=temp;
				break
		if array[0]>temp:
			array[0]=temp
		print array
	return array

array=[3,2,7,5,6,4,1]
sort_insert(array)
