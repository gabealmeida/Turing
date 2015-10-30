View.Set ("graphics:1200;800")
var score : int := 0
var key : string (1)
var x, y : int
var xinc, yinc : int

x := 320
y := 200
xinc := 0
yinc := 10
    drawbox (0,0,1190,780,black)
loop
    exit when whatdotcolour (x,y) not=white 
    drawfilloval (x, y, 5, 5, blue)
      score := score +1
      locate (1,1)
      put "Score: ",score..
    delay (50)
    %drawfilloval (x, y, 5, 5, white)

    x += xinc
    y += yinc

    if hasch then
        getch (key)
        if key = chr (203) then
            xinc := -10
            yinc := 0
        elsif key = chr (208) then
            xinc := 0
            yinc := -10
        elsif key = chr (200) then
            xinc := 0
            yinc := 10
        elsif key = chr (205) then
            xinc := 10
            yinc := 0
        end if
    end if


end loop

