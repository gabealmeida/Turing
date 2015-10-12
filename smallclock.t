View.Set ("graphics:400;100,title:SmallClock,position:center;center,nobuttonbar")
var timeOfDay : string
var today : string
var font : int := Font.New ("consolas:50")

loop
    time (timeOfDay)
    date (today)
    Font.Draw (today, 30, 50, font, black)
    Font.Draw (timeOfDay, 50, 0, font, black)
    delay (1000)
    cls
end loop
