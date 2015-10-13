% Super Battle Arena! By NotNemesis
View.Set ("graphics:900;600,title:Super Battle Arena!, nobuttonbar, position:center;center")

var ver : string := "Test Build 1"
var ftit : int := Font.New ("system:100")
var fver : int := Font.New ("system:15")
var per1 : array 0 .. 2 of string
% Declare per1
var ip, p1c, p2c : int
var p1, p2 : int
var screen : int := 0

if screen = 0 then
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

if screen = 1 then
    put "What is your name, player 1?"
    get p1 : *
    put "Welcome, ", p1
    put "And what is your name, player 2?"
    get p2 : *
    put "Welcome, ", p2
    put ""
    put "Loading Character Library..."
    delay (500)
    screen = 2 
end if


