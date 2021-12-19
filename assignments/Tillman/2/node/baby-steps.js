var args = process.argv;
var result = 0;
for(var i = 2; i<args.length;i++){
result+=Number(args[i]);
}
console.log(result);