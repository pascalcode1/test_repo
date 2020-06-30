import json

print('777 111')
print('777 888 11999')

with open('ihub_parameters.json', "rb") as PFile:
    data = json.loads(PFile.read().decode('utf-8'))

print(data["processId"])
print(data["ovUrl"])
print(data["logLevel"])
