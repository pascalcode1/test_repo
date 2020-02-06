import math


class Program():
    def g(self):
        print("Это программа находит корни квадратного уравнения из коэфицентов a, b, c находящихся в уранении!")
        print("Это программа находит корни квадратного уравнения из коэфицентов a, b, c находящихся в уранении!")
        self.a = float(input("Введите превый коэфицент(a)"))
        self.b = float(input("Введите второй коэфицент(b)"))
        self.c = float(input("Ведите третий коэфицент(c)"))
        d = float((self.b ** 2) - 4 * self.a * self.c)
        if (d == 0):
            x1 = float(-self.b / (2 * self.a))
            print("Корень x1 " + str(x1))
        elif (d > 0):
            x1 = (-self.b + math.sqrt(d) / (2 * self.a))
            x2 = (-self.b - math.sqrt(d) / (2 * self.a))
            print("Корень x1 " + str(x1) + "Корень x2 " + str(x2))
        else:
            print("Корней нет!")
a = Program()
a.g()