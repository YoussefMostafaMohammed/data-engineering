name="john"
age=25
city="New York"
formated_sentence = f"{name}, aged {age}, lives in {city}"

print(formated_sentence)
print(formated_sentence.title())

print(formated_sentence.center(40,"*"))

numof_stars_onsides = (40 -len(formated_sentence)) // 2
centered_sentence=(numof_stars_onsides*"*")+formated_sentence.title()+(numof_stars_onsides*"*")
print(centered_sentence)
