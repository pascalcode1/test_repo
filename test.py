import json

print('777 111')
print('777 888 11999')

a = 0
b = 1
while True:
    a = b + 1

with open('ihub_parameters.json', "rb") as PFile:
    data = json.loads(PFile.read().decode('utf-8'))

print(data["processId"])
print(data["ovUrl"])
print(data["logLevel"])

f = open("ihub_parameters.json","w+")
for i in range(10):
    f.write("This is line %d\r\n" % (i+1))
f.close()
