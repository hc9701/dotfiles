import re
colors=[]
colorCodes=[]
contents=[]
with open('./.Xresources') as f:
    for line in f.readlines():
        if not line.strip():
            continue
        if line[0]=='!':
            contents.append(line)
            continue
        if line.find('#define')>=0:
            print(line)
            _,color,colorCode=line.split()
            colors.append(color)
            colorCodes.append(colorCode)
        else:
            color=line.split()[-1]
            if color in colors:
                i=colors.index(color)
                line=line.replace(color,colorCodes[i])
            contents.append(line)

with open('.Xresources','w') as f2:
    f2.writelines(contents)
