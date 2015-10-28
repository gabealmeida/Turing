% SATCA by NotNemesis v1.0
% Super Amazing Turing Choosable Adventure Engine

% A simple game engine that allows a player to make a simple Choose Your Own Adventure game
% Input variables are intergers because it allows to make a parameter where if an interger is
% too high, it won't let them make that input and will give an error message instead

var win1 : int := Window.Open ("position:center;center,graphics:900;600,nobuttonbar,title: SATCA") % Opens main window
var input, inres : int  % Takes user input, resets game
var res : int := 1 % Reset gane

loop
if res = 1 then
cls
put "SATCA Engine Demo"
put "Engine and Demo by NotNemesis"
put "Type [0] to begin"
res := 0 
get input
end if

if input = 0 then
put "This is where a message would be displayed"
put "This is where a message would be displayed"
put "This is where a message would be displayed"
put "Option 1 (does something [1]"
put "Option 2 (resets game) [2]"
get input
end if

if input = 1 then
put "This is where a message would be displayed"
put "This is where a message would be displayed"
put "This is the end of the demo"
put "Thank you for playing"
delay (20000000)
end if

if input = 2 then 
put "You have chosen to reset the game"
put "Type [0] to reset the game"
get inres % This variable does nothing, it just waits until the player is ready
res := 1 % Resets game
end if

if input > 2 or input < 0 then % 2 is the highest input you can give, 0 is the lowest
put "Invalid input"
get input
end if

end loop


