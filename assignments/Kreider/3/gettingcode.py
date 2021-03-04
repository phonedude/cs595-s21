
def print_to_doc(data):
    with open('data.txt','a') as gen_file:
        gen_file.write(superlist1[n-1]+lines)         #making a quick print method so do
                                                    #so i do not need to call it every time
superlist1=[]
with open('superlist.txt') as top_list:
    n=0
    for lines in top_list.readlines():               #gets superlist into a list
        superlist1.append(lines)
    with open ('data.txt','a') as gen_file:
        gen_file.write("This is the data for Codes"+'\n')
    while n<= len(superlist1):  
        with open(superlist1[n-1].removesuffix('\n')) as txtfile:
            for lines in txtfile.readlines():
                if 'HTTP/1.1 2' in lines:                #used to print out codes to doc where I
                    print_to_doc(superlist1[n])           # i then enter into MD file
                    n+=1
                if 'HTTP/1.1 4' in lines:
                     print_to_doc(superlist1[n])
                     n+=1
                if 'HTTP/1.1 5'in lines:
                    print_to_doc(superlist1[n])
                    n+=1



