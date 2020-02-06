import datetime


class Hero:
    def __init__(self, date=None, sex=True, name=None, iq=80):
        self.date = date
        self.sex = sex
        self.name = name
        self.iq = iq

        self.items = []

    def show(self):
        if self.sex:
            str_sex = "Male"
        else:
            str_sex = "Female"

        return "Name:" + str(self.name) + ', Date: ' + str(self.date) \
               + ', Sex:' + str_sex + ', IQ:' + str(self.iq) + ";"

    def add(self):
        self.name = input("Write Name: ")
        self.iq = int(input("Write IQ: "))
        str_sex = input("Write Sex (M/F): ")
        if str_sex == 'F':
            self.sex = False
        else:
            self.sex = True
        year = int(input("Write Year: "))
        month = int(input("Write Month: "))
        day = int(input("Write Day: "))
        self.date = datetime.date(year, month, day)
