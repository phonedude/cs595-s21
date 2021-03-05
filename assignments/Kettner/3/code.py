file = open("sitedatafiltered.txt","r")
data = []
for row in file:
	data.append(row)

header = data.pop(0)

def fixed_length(text,length):
	if len(text) > length:
		text = text[:length]
	elif len(text) < length:
		text = (text + "" * length)[:length]
	return text

print("#"*120)
print("# ", end="")
for column in header:
	print(fixed_length(column,30),end = "")
print()
print("#"*120)

for row in data:
	print("# ", end="")
	for column in row:
		print(fixed_length(column,30),end = "")
	print()
print("#"*120)
