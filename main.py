import requests

response = requests.get("http://localhost:8080/api/icecream")

if (response.status_code == 200):
    print("SUCCESS!")
    print(response.json())
elif response.status_code == 404:
    print("NOT FOUND")
else:
    print("STATUS_CODE: ", response.status_code)
