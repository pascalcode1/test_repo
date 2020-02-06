from os import listdir
from os.path import isfile, join

mypath2 = "C:\OV\ovov\ov\db\scripts\\"
mypath = "C:\OV\ovov\ov\db\ddl\packages"
onlyfiles = [f for f in listdir(mypath) if isfile(join(mypath, f))]

new_list =[]
for f in onlyfiles:
    if f.find("spec") < 0:
        new_list.append(f)

num = 7632

for name in new_list:
    sf = open(mypath + "\\" + name, "r", encoding='utf-8')
    contents = ""
    if sf.mode == 'r':
        contents = sf.read()

    spec_sf = open(mypath + "\\" + name.replace(".sql", "_spec.sql"), "r", encoding='utf-8')
    spec_contents = ""
    if spec_sf.mode == 'r':
        spec_contents = spec_sf.read()

    contents = spec_contents + "\r\n" + contents

    fi2 = open(mypath2 + str(num) + "_CodeQ-151553_" + name.replace('.sql','_rollback.sql'), 'tw', encoding='utf-8')
    fi2.write(contents)
    fi2.close()

    updated_contents = contents.replace("Copyright 2003-2019 OneVizion, Inc. All rights reserved.",
                                        "Copyright 2003-2020 OneVizion, Inc. All rights reserved.")
    fi = open(mypath2 + str(num) + "_CodeQ-151553_" + name, 'tw', encoding='utf-8')
    fi.write(updated_contents)
    fi.close()

    num = num + 1

