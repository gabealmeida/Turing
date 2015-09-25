%% Declares and initiated port as the integer value 5535
const port : int := 5535
%% Opens an array to store the messages said. (Up to 5000)
var chatMsg : array 1 .. 5000 of string
%% msgNum tracks how many messages chatMsg has stored
var msgNum : int := 1
%% Sets all of chatMsg equal to null
for i : 1 .. 5000
    chatMsg (i) := ""
end for
%% Declares the record person which hold the msg he typed, his name
%% his IP, and the netStream he will use to send info the the server
type person :
    record
	netStream : int
	ip, name, msg : string
    end record
%% Declares the amount of usersOnline, and a miscellanious variabled 
%% called num
var usersOnline, num : int := 1
%% Declares that there will be 15 users
var user : array 1 .. 15 of person
%% Sets the user info to null
for i : 1 .. 15
    user (i).netStream := 0
    user (i).ip := ""
    user (i).name := "null"
    user (i).msg := ""
end for
%% Autosets the IP of the server. (This is mine, but I dont have
%% internet, so change this to your IP.)
user (1).ip := "169.254.163.54"
var counter : int := 15
%% Draws a black background
drawfillbox (0, 0, maxx, maxy, 16)
%% Sets text colorback to black, and the text to red
color (12)
colorback (16)
%% Displays that this is the client
put "Chat [Client] : By DanShadow"
put ""
%% Sets text color to white
color (0)
%% Displays that the client is connecting to the server
put "Please wait, Connecting..."
color (10)
%% ALL this code below, just checks from ports 5550 down to 5535
%% going backwards, so it will autoconnect on the first available
%% port that the server will be waiting on. If none of these ports
%% are open, it will display that the client couldnt connect.
loop
    View.Update
    user (1).netStream := Net.OpenConnection (user (1).ip, port + counter)
    if user (1).netStream < 0 then
    else
	put "Connection Astablished."
	delay (2000)
	exit
    end if
    counter -= 1
    if counter = -1 then
	put "Could not connect to server."
	View.Update
	delay (2000)
	break
    end if
    delay (1)
    locate (4, 1)
    num := round (counter * 5)
    put "Connecting: ", 100 - num, "%"
end loop
%% Declares the variable 'key' to use in the getch command
var key : string (1) := "~"
%% Creates miscellanious text variables
var name, textInput, temp, input : string := ""
%% Gets the users name
put "Enter your name: " ..
get name : *
%% Makes the Second chat message as a temporary welcome message
chatMsg (2) := "Welcome to Chat " + name + ", brought to you by DanShadow"
%% Clears screen, then displays its the chat, by me.
cls
put "Chat : By DanShadow"
put ""
temp := name
%% Sends the server your name, and the message that you have connected
put : user (1).netStream, temp
temp := "[I] " + name + " has connected."
delay (50)
put : user (1).netStream, temp
%% Starts the chat loop
loop
    %% setscreen and View.Update eliminate flickering
    setscreen ("offscreenonly")
    View.Update
    %% If the server is sending information to the client
    if Net.LineAvailable (user (1).netStream) then
	%% Get the info being sent, save it in variable 'temp'
	get : user (1).netStream, temp : *
	%% Add it to the array of messages
	chatMsg (msgNum) := temp
	%% Update messages in chatMsg
	msgNum += 1
    end if
    %% Declares 'key' as an unusable key '~'
    locate (1, 1)
    key := "~"
    %% If the user presses a button, it saves it under var 'key'
    if hasch then
	getch (key)
    end if
    delay (5)
    %% If the user presses 'ESCAPE', the program exits
    if key = (KEY_ESC) then
	exit
    %% If the users presses 'BACKSPACE' then the users input
    %% variable is updated to its original length-1
    elsif ord (key) = 8 then
	input := ""
	for i : 1 .. length (textInput)
	    if i < length (textInput) then
		input += textInput (i)
	    end if
	end for
	textInput := input
    %% If the user presses 'ENTER', it sends his name and message
    %% to the server
    elsif key = (KEY_ENTER) then
	temp := name
	put : user (1).netStream, temp
	delay (50)
	temp := textInput
	put : user (1).netStream, name + ": " + temp
	textInput := ""
    else
	%% Makes the users message equal to null
	user (1).msg := "null"
	%% if the ord of the variable 'key' is 
	%% upper/lower case of the alphabet, is a numeral,
	%% or a few other allowed keys, it adds it to the
	%% user input variable textInput
	if ord (key) >= 32 and ord (key) <= 122 then
	    if key not= "~" then
		textInput += key
	    end if
	end if
    end if
    %% Draws a black box, therefore clearing the screen
    drawfillbox (0, 0, maxx, maxy, 16)
    locate (1, 1)
    %% Resets colorback as black, and text as red
    color (12)
    colorback (16)
    %% Displays that this is the client
    put "Chat [Client]: By DanShadow"
    put ""
    color (10)
    %% Displays all the messages received so far
    for i : 1 .. msgNum
	put chatMsg (i)
    end for
    put ""
    color (12)
    %% Displays the input currently typed in by the user
    put "Input: " ..
    color (0)
    put textInput
end loop
