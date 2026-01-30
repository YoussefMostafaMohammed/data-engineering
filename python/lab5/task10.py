import requests

url = "https://api.tvmaze.com/search/shows?q=star"

response=requests.get(url)
data=response.json()

print("Shows returned")

for item in data:
    show = item["show"]
    print(show["name"])
print(type(response))
print(type(data))
print(len(data))
