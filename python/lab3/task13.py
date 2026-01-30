tpl = ("red", "blue", "green", "yellow")
if "blue" in tpl:
    print("blue detected!")
print(tpl.index("green"))

tpl2=tpl[1:3]
print(tpl2)

print(', '.join(tpl))
