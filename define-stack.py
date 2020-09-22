import numpy as np


def writes_stack_lines():
    '''
    This file prints in the file 'untitled'
    the necessary lines for defining a vertical stack
    in serpent.

    '''
    R = 48
    H = 2*R

    h = H/60
    print(h)
    stack = h*np.arange(60)
    stack = np.round(stack, 3)

    f = open("untitled", "w+")
    for i in range(len(stack)):
        if i % 10 == 0:
            f.write('\n')
        f.write(' '+str(stack[i])+' 4')
    f.close()
