% Super Battle Arena! By NotNemesis
View.Set ("graphics:900;600,title:Super Battle Arena!, nobuttonbar, position:center;center")

var ver : string := "Test Build 12"
var ftit : int := Font.New ("system:100")
var fver : int := Font.New ("system:15")
var per1 : array 0 .. 2 of string % Characters 1
per1 (0) := "[1] Guy Swordswing  "
per1 (1) := "[2] Amy Archell  "
per1 (2) := "[3] Wi Zerd  "
var ab1 : array 0 .. 3 of string % Character 1 Abilities
ab1 (0) := "[1] Sword Spin"
ab1 (1) := "[2] Gain Courage"
ab1 (2) := "[3] Dragon Slash"
ab1 (3) := "[4] Sheild Smash"
var ad1 : array 0 .. 3 of int % Character 1 Damage
ad1 (0) := 100
ad1 (1) := 75
ad1 (2) := 0
ad1 (3) := 50
var ip, p1c, p2c, dmgc : int % Input & Character Choices
var p1, p2, ar1, ar2 : string % Player Names
var hp1, at1, df1, mg1, md1, sp1, mhp1, com1 : int % P1 STATS
var hp2, at2, df2, mg2, md2, sp2, mhp2, com2 : int % P2 STATS
var screen : int := 0

if screen = 0 then % Menu
    Font.Draw ("Super Battle Arena!", 130, 350, ftit, black)
    Font.Draw (ver, 0, 0, fver, black)
    locatexy (360, 320)
    put "Type [0] to start"
    locatexy (360, 310)
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
    put per1 (0), per1 (1), per1 (2)
    get p1c
    cls
    put p2, ", Choose Your Character!" % P2
    put per1 (0), per1 (1), per1 (2)
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
    screen := 3
    mhp1 := hp1
    ar1 := "ab1"
end if

if p2c = 1 then
    hp2 := 3922
    at2 := 922
    df2 := 810
    mg2 := 108
    md2 := 699
    sp2 := 308
    screen := 3
    mhp2 := hp2
    ar2 := "ab1"
end if

% [2] Amy Archell
if p1c = 2 then
    hp1 := 2539
    at1 := 810
    df1 := 600
    mg1 := 788
    md1 := 605
    sp1 := 411
    screen := 3
    mhp1 := hp1
    %ar1 :=
end if

if p2c = 2 then
    hp2 := 2539
    at2 := 810
    df2 := 600
    mg2 := 788
    md2 := 605
    sp2 := 411
    screen := 3
    mhp2 := hp2
    %ar2 :=
end if

% [3] Wi Zerd
if p1c = 3 then
    hp1 := 1985
    at1 := 208
    df1 := 668
    mg1 := 799
    md1 := 702
    sp1 := 307
    screen := 3
    mhp1 := hp1
    %ar1 :=
end if

if p2c = 3 then
    hp2 := 1985
    at2 := 208
    df2 := 668
    mg2 := 799
    md2 := 702
    sp2 := 307
    screen := 3
    mhp2 := hp2
    %ar2 :=
end if

cls
loop
    if screen = 3 then
        put p1, ",what will you do?"
        if ar1 = "ab1" then
            put ab1(0)
            put ab1(1)
            put ab1(2)
            put ab1(3)
            get com1
            screen := 4
        elsif ar1 = "ab2" then
            put ab2(0)
            put ab2(1)
            put ab2(2)
            put ab2(3)
            get com1
            screen := 4
        elsif ar1 = "ab3" then
            put ab3(0)
            put ab3(1)
            put ab3(2)
            put ab3(3)
            get com1
            screen := 4
        end if
    end if

    if screen = 4 then
        put p2, ",what will you do?"

        if ar2 = "ab1" then
            put ab1(0)
            put ab1(1)
            put ab1(2)
            put ab1(3)
            get com2
            screen := 5
        elsif ar1 = "ab2" then
            put ab2(0)
            put ab2(1)
            put ab2(2)
            put ab2(3)
            get com1
            screen := 5
        elsif ar1 = "ab3" then
            put ab3(0)
            put ab3(1)
            put ab3(2)
            put ab3(3)
            get com1
            screen := 5
        end if
    end if


    if com1 = 1 and ar1 = "ab1" then
        put p1, " used Sword Spin!"
        dmgc := (at1 / df2) * (ad1(0) + 2)
        hp2 := hp2 - dmgc
        put p2, " took ", dmgc, " damage!"
    elsif com1 = 2 and ar1 = "ab1" then
       

