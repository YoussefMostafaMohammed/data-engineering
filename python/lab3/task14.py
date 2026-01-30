tpl = ((1, 2, 3), (4, 5, 6), (7, 8, 9))
print(tpl[1][1])

print(tpl[1])
print(len(tpl[0]))
lst=[]
for mini_tpl in tpl:
    lst.extend(list(mini_tpl))

print(lst)

print(tpl[::-1])
