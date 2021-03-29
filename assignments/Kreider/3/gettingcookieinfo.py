
from statistics import median
superlist1=[]
cookielist=[]                       ## setting up lists to use in the code below
cookielistfinal=[]

cookie_num=0
http_only_num=0
secure_num=0
lax_num=0                        ## getting predefined variables out of the way
same_site_num=0
strict_num=0
total_path=0
none_in_lines_num=0
path_to_none_num=0

with open('superlist.txt')as top_list:
    for lines in top_list.readlines():     ## getting the list from superlist and putting 
        superlist1.append(lines)           ##and putting that data into a list 
        
m=0  
while m<=len(superlist1):         # so that the while loop does not over shoot                                               
    with open(superlist1[m-1].removesuffix('\n'))as txtfile:
        for lines in txtfile.readlines():
            if'Cookie:' in lines:
                cookie_num+=1
               
            if ' HttpOnly;'in lines:
                http_only_num+=1
            if '; Secure' in lines:            # in each of these if statements i am getting 
                secure_num +=1                 # the corasponding data and storing it for later use
            if 'Lax'in lines:
                lax_num +=1
            if 'SameSite' in lines:
                same_site_num+=1
            if 'Strict' in lines:
                strict_num+=1
            if 'None' in lines:
                none_in_lines_num+=1
            if 'path' in lines:
                total_path+=1
            if 'path=/' in lines:
                path_to_none_num+=1
    cookielist.append(cookie_num)
    cookielistfinal.append(cookielist[m]-cookielist[m-1])
    maximum=max(cookielistfinal)
    minimum=min(cookielistfinal)                  ## down here is how I got the max, min , and Median
    cookie_med=median(cookielistfinal)
    m+=1
print(str(cookie_num)+' total number of cookies'+'\n'+'mean of cookies '+str(cookie_num/m))
print(str(secure_num)+ ' number of secure cookies')
print(str(http_only_num)+' number of HTTP only')
print(str(same_site_num)+ ' number of SameSite')
print(str(lax_num)+ ' number of lax cookies')
print(str(strict_num)+' number of strict samesite')
print(str(none_in_lines_num)+' number of none samesite')
print(str(total_path)+' number of paths')
print (str(path_to_none_num-total_path)+' total number of paths that had var other than "/"')
print(str(maximum)+' is the max number of cookies per request \n'+str(minimum)+
' is the min number of cookies per request')
print(str(cookie_med)+' is the median')
print(cookielistfinal)
print(cookielist)
# these print statments are being used to get my data out and I then put them into the MD file

