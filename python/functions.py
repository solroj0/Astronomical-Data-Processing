
with open("data.dat",'r') as f:

    size=2

    f_contents = f.read(size)    

    print(f.tell())    

    while len(f_contents) > 0:   
        print(f_contents, end='blank space')
        f_contents = f.read(size)
