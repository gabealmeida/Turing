% CRED.t; Prototype Credits for CYOAE by NotNemesis
View.Set ("graphics:900;600")
var credh : int := Font.New ("system:72")
var credb : int := Font.New ("system:36")
var randy : int

colourback (7)
cls

procedure printrandy % Testing procedure to see what rando number is chosen from randy
colour (0)
put randy
end printrandy

loop
    randint (randy, 1, 10)
    printrandy
    if randy = 10 then
	randint (randy, 1, 12)
	Font.Draw ("Credits", 320, 400, credh, randy)
	delay (500)
	Font.Draw ("Rafael W. (NotNemesis)", 200, 350, credb, randy)
	delay (500)
	Font.Draw ("Mason (sonason)", 260, 300, credb, randy)
	delay (500)
	Font.Draw ("Kernen (MC47)", 280, 250, credb, randy)
	delay (500)
	Font.Draw ("Gabe (gabealmeida)", 220, 200, credb, randy)
	delay (500)
    else
	Font.Draw ("Credits", 320, 400, credh, 0)
	delay (500)
	Font.Draw ("Rafael W. (NotNemesis)", 200, 350, credb, 0)
	delay (500)
	Font.Draw ("Mason (sonason)", 260, 300, credb, 0)
	delay (500)
	Font.Draw ("Kernen (MC47)", 280, 250, credb, 0)
	delay (500)
	Font.Draw ("Gabe (gabealmeida)", 220, 200, credb, 0)
	delay (500)
    end if
    cls
end loop
