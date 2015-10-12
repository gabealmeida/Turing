View.Set ("graphics:700;200,title:Clock,position:center;center,nobuttonbar")
var timeOfDay : string
var today : string
var font : int := Font.New ("consolas:100")

loop
    time (timeOfDay)
    date (today)
    Font.Draw (today, 20, 100, font, black)
    Font.Draw (timeOfDay, 50, 0, font, black)
    delay (1000)
    cls
end loop
