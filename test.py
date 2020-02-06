from Hero import *

heroes = []
h = Hero(datetime.date(1999, 9, 9), True, 'Geralt of Rivia', 100)
heroes.append(h)
heroes.append(Hero(datetime.date(2003, 10, 19), True, 'Ilya Gubenkov', 90))

while True:
    command = input("Write a command \r\n")

    if command == "Add":
        new_hero = Hero()
        new_hero.add()
        heroes.append(new_hero)

    if command == "Exit":
        break

    if command.upper() == "SHOW":
        for hero in heroes:
            print(hero.show())
