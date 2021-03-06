% SATCA by NotNemesis v1.2
% Super Amazing Turing Choosable Adventure Engine

% A simple game engine that allows a player to make a simple Choose Your Own Adventure game
% Input variables are intergers because it allows to make a parameter where if an interger is
% too high, it won't let them make that input and will give an error message instead

var win1 : int := Window.Open ("position:center;center,graphics:900;600,nobuttonbar,title: SATCA") % Opens main window
var input, inres : int  % Takes user input, resets game
var res : int := 1 % Reset game
var logo : int := Pic.FileNew ("logo.jpg") % Placeholder logo. MadOctopus logo can be downloaded @ https://goo.gl/Qup6O8

% This if structure looks for the placeholder logo. If it does not exist where the file is saved,
% it will give an error. Otherwise, it puts the logo. Keep in mind that this logo is only designed
% for a 900*600px screen or window.
if logo = 0 then 
    put "<logo.jpg was not found in default file directory>"
    put "loading game, please wait..."
    delay (3000)
    cls
else
    Pic.Draw (logo, 0, 0, picCopy)
    delay (3000)
    cls
end if

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
put "Option 1 (does something) [1]"
put "Option 2 (resets game) [2]"
get input
end if

if input = 1 then
put "This is where a message would be displayed"
put "This is where a message would be displayed"
put "This is the end of the demo"
put "Thank you for playing"
exit
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

colour (red)
put "You have exited the loop. This could have been caused by abnormal behaivour in the program"
% put "Please close the program and try again"  % Only use this line when using SATCA for a project. Do not use this line within the demo
% Please remove the next two lines of code when using SATCA for a project
put "In the case of SATCA.t, this is normal behaivour caused by an option."
put "Within a program that uses SATCA, exiting the loop could be abnormal behaivour"

