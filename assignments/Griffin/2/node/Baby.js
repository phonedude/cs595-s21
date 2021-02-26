var test = 0;
for (i = 2; i < process.argv.length; i++) {
  test += Number(process.argv[i]);
}

console.log(test);