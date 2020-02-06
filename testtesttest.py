from enum import Enum


class Color(Enum):
     RED = 1
     GREEN = 2
     BLUE = 3


print(Color(1).name.title())

v = Color.GREEN

print(v.name.title())