

let total=0

let x= process.argv.length

for(let i=2; i<x; i++){
    total +=+ Number(process.argv[i])
}

console.log(total)