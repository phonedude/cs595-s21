import sys
import numpy

cookies = sys.argv[1:-1]

intCookies = list(map(int, cookies))

intCookies.sort()

print("Minimum number of cookies: ", intCookies[0], "\n")
print("Maximum number of cookies: ", intCookies[-1], "\n")
print("Mean number of cookies: ", numpy.mean(intCookies), "\n")
print("Median number of cookies: ", numpy.median(intCookies))
