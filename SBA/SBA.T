% Super Battle Arena! By NotNemesis
View.Set ("graphics:900;600,title:Super Battle Arena!, nobuttonbar, position:center;center")

var ver : string := "Test Build 6"
var ftit : int := Font.New ("system:100")
var fver : int := Font.New ("system:15")
var per1 : array 0 .. 2 of string % Characters 1
per1(0) := "[1] Guy Swordswing  "
per1(1) := "[2] Amy Archell  "
per1(2) := "[3] Wi Zerd  "
var ip, p1c, p2c : int % Input & Character Choices
var p1, p2 : string % Player Names
var hp1, at1, df1, mg1, md1, sp1 : int % P1 STATS
var hp2, at2, df2, mg2, md2, sp2 : int % P2 STATS
var screen : int := 0

if screen = 0 then % Menu
    Font.Draw ("Super Battle Arena!", 130, 350, ftit, black)
    Font.Draw (ver, 0, 0, fver, black)
    locate (15, 45)
    put "Type [0] to start"
    locate (16, 45)
    get ip
end if

if ip > -1 then
    cls
    screen := 1
end if

if screen = 1 then % Name Set
    put "What is your name, player 1?" % P1
    get p1 : *
    put "Welcome, ", p1
    put "And what is your name, player 2?" % P2
    get p2 : *
    put "Welcome, ", p2
    put ""
    put "Loading Character Library..."
    delay (500)
    screen := 2 
end if

if screen = 2 then % Character Select
cls
put p1, ", Choose Your Character!" % P1
put per1(0), per1(1), per1(2)
get p1c
cls
put p2, ", Choose Your Character!" % P2
put per1(0), per1(1), per1(2)
get p2c
end if

% Setting Stats
% [1] Guy Swordswing
if p1c = 1 then
hp1 := 3922
at1 := 922
df1 := 810
mg1 := 108
md1 := 699
sp1 := 308
end if

if p2c = 1 then
hp2 := 3922
at2 := 922
df2 := 810
mg2 := 108
md2 := 699
sp2 := 308
end if

% [2] Amy Archell
if p1c = 2 then
hp1 := 2539
at1 := 810
df1 := 600
mg1 := 788
md1 := 605
sp1 := 411
end if

if p2c = 2 then
hp2 := 2539
at2 := 810
df2 := 600
mg2 := 788
md2 := 605
sp2 := 411
end if





