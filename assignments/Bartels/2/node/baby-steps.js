argList = process.argv;
addArgs = argList.slice(2,argList.length);

sum = 0;
solution = addArgs.forEach((value) => {
  // convert to a number
  sum += Number(value);
  return sum;
});

console.log(sum);
