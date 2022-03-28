"""
Task
Given an array of numbers and an index, return either the index of the smallest number that is larger than the element at the given index, or -1 if there is no such index ( or, where applicable, Nothing or a similarly empty value ).

Notes
Multiple correct answers may be possible. In this case, return any one of them.
The given index will be inside the given array.
The given array will, therefore, never be empty.

"""
def least_larger(a, i): 
    numb = a[i]
    ret = None
    
    for val in a:
        if val > numb:
            if ret is None:
                ret = val
            elif val < ret:
                ret = val
    if ret is None:
        return -1
    else:
        return a.index(ret)
