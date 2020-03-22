_basicMessage = "hello world"
print _basicMessage
print(_basicMessage)

_secondsInAday = 60*60*24;
print _secondsInAday
print(_secondsInAday)

_secondsInAweek = _secondsInAday * 7
print _secondsInAweek
print(_secondsInAweek)

print "1", "2", "3", "4"

'''
multi
line
comment
'''

# Python Variables
_x = 16
_y = 32
_z = 47
_xy = 52
_xyz = 99

print(_x)
print(_y)
print(_z)
print(_xy)
print(_xyz)

_string = "welcome to the world of vanilla ice cream"
print _string, _x, _y, _z, _xy, _xyz, _secondsInAday, _secondsInAweek
print _x + _y + _z + _xy + _xyz

_list = [1, 2, 3, 5, 8, 13, 21]
print _list[0] + _list[1] + _list[2] + _list[3] + _list[4] + _list[5] + _list[6]

_list.append(34)
print _list

_list.remove(5)
print _list

_list.remove(34)
print _list

_myDictionary = {
    "_T": "bad and ugly and perverted childish boy",
    "_J": "grown up athletic sane and good boy",
    "_A": "retarded dumb faggot dumber then a monkey almost looking like an horse",
    "_E": "insane neurotic lady with a brittish/spannish germanized and francesized look",
}

print _myDictionary["_T"]
print _myDictionary["_A"]
print _myDictionary["_E"]
print _myDictionary["_J"]

print _myDictionary.get("_T")
print _myDictionary.get("_A")
print _myDictionary.get("_E")
print _myDictionary.get("_J")

_d = input("enter a number")
_d = int(_d)

print  type(_d)
print  _d

if(_d>_x):
    print "d is greater"
    print "_d: ",  _d
    print "_x: ", _x

if(_d<_x):
    print "d is minor"
    print "_d: ",  _d
    print "_x: ", _x

if(_d==_x):
    print "d is equal"
    print "_d: ",  _d
    print "_x: ", _x

else:
    print "d is greater"
    print "_d: ", _d
    print "_x: ", _x


    _i = 0

while(_i<10):
    print "hello"
    print "i is equal to: ", _i
    _i=_i+1


_i = 0

for _i in range(0, 10):
    print _i

peopleInTheTechnoScene = ["jeff mills", "robert hood", "derrick may", "axis", "detroit underground resistance"]

for item in peopleInTheTechnoScene:
    if item == "jeff mills":
        print "jeff mills found"
        continue
    print "hello "  + item
        
    