def get_user_location():
    country="Egypt" 
    city="Cairo"
    postal_code="12345"
    return country, city, postal_code


country,city,postal_code=get_user_location()
print(f'You are Located in {country}, {city}, Zip:{postal_code}')

try:
    country,city=get_user_location()
except ValueError:
    print("error occured")
