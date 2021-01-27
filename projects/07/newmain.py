import re

# class VMCommand():
#     pattern = r'(\/\*(\w|\D)+\*\/)|(\/\/(?:[^\r\n]|\r(?!\n))*)' #Regex for removing all kinds of comments. I hate regexs


def test():
    fil = open('newfile.vm', 'r').read()
    print(type(fil))
    pattern = r'(\/\*(\w|\D)+\*\/)|(\/\/(?:[^\r\n]|\r(?!\n))*)'
    f = re.sub(pattern, '', fil)
    L_File = [x for x in f.split('\n') if x]
    print(L_File)

test()

class PushPopTranslation()

class MathTranslation()


if __name__ == "__main__":
    vmFile = open('newfile.vm').read()
    pattern = r'(\/\*(\w|\D)+\*\/)|(\/\/(?:[^\r\n]|\r(?!\n))*)'
    f = re.sub(pattern, '', fil)
    L_File = [x for x in f.split('\n') if x]

    mt = MathTranslation()
    pp = PushPopTranslation()