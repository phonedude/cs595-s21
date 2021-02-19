const inp_array = process.argv

let sum = 0

for(i=2; i < inp_array.length; i++){
	sum += +(inp_array[i])
}

console.log(sum)