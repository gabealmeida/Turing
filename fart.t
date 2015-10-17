%(F)ART By NotNemesis
var art : int := Window.Open
("graphics: 900;600, title:FART, position:top, center")
var vare : int := Window.Open
("graphics: 100;100, title:FART GPS, position:bottom,left")
var chars : array char of boolean
var x, y, xx, yy : int
var title : int := Font.New ("system:100")
var hud : int := Font.New ("system:12")
var colur : int


x := 0
y := 0
xx := 10
yy:= 10

Font.Draw ("(F)ART", 500, 500, title, black)
delay (1000)
randint (colur, 1, 12)
cls

loop
Window.Select (art)
Input.KeyDown (chars)

if chars (KEY_UP_ARROW) then
y := y + 3
yy := yy + 3
end if

if chars (KEY_DOWN_ARROW) then
y := y - 3
yy := yy - 3
end if

if chars (KEY_LEFT_ARROW) then
x := x - 3
xx := xx - 3
end if

if chars (KEY_RIGHT_ARROW) then
x := x + 3
xx := xx + 3
end if

if chars (' ') then
randint (colur, 1, 12)
cls
end if

if chars ('r') then
randint (colur, 1, 12)
end if

drawfillbox (x, y, xx, yy, colur)
Window.Select (vare)
cls
put "Colour : ", colur
put "X : ", x
put "Y : ", y
delay (15)
end loop
