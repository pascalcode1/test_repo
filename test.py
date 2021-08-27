import json
import subprocess
import sys

try:
    subprocess.check_call([sys.executable, '-m', 'pip', 'install', '-r', 'python_dependencies.txt'])
except Exception as e:
    raise Exception("test")


from hero import *

heroes = []
h = Hero(datetime.date(1999, 9, 9), True, 'Geralt of Rivia', 100, Profession.lumberjack)
heroes.append(h)
heroes.append(Hero(datetime.date(2020, 10, 19), True, 'Ilya Gubenkov', 90, Profession.miner))

while True:
    command = input("Write a command \r\n").upper()

    if command == "ADD":
        new_hero = Hero()
        new_hero.add()
        heroes.append(new_hero)

    if command == "EXIT":
        break

    if command == "SHOW":
        for hero in heroes:
            print(hero.show())

    if command[0:3].find("ID ") >= 0:
        hero_id = int(command[3::])
        if 0 <= hero_id < len(heroes):
            print(heroes[hero_id].show())

with open('ihub_parameters.json', "rb") as PFile:
    data = json.loads(PFile.read().decode('utf-8'))

print(data["processId"])
print(data["ovUrl"])
print(data["logLevel"])

f = open("ihub_parameters.json","w+")
for i in range(10):
    f.write("This is line %d\r\n" % (i+1))
f.close()
