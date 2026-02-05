def maior (num,numdois, numtres):
    if num >= numdois and num >= numtres:
        print(num) 
    elif numdois >= num and numdois >= numtres:
        print(numdois)
    else:
        print(numtres)

maior(10,3,7)