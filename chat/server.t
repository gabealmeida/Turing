%% Sets the initial port as a constant integer value : 5535
const port : int := 5535
%% Creates a record called 'person', which will contain their netStream
%% address, their ip, name, and the message they might send.
type person :
    record
	netStream : int
	ip, name, msg : string
    end record
%% Creates an array called 'user' of 10 of the record 'person'. This
%% will allow 10 people to connect successfully.
var user : array 1 .. 10 of person
%% This sets the initial values of each user to a null state.
for i : 1 .. 10
    user (i).netStream := 0
    user (i).ip := ""
    user (i).name := "null"
    user (i).msg := ""
end for
%% Declares the 'key' variable to use in the getch command
var key : string (1) := "~"
%% Declares some miscellanious variables to hold text
var temp, command, input : string := ""
%% usersOnline will track how many users are online, and this will
%% determine which port the server will wait for a connection on.
%% num is a miscellanious variable to hold an integer.
var usersOnline, num : int := 1
%% Shows the programmer that the server is awaiting the first connection
put "Awaiting initial connection..."
%% Waits for a connection, and saving all information in the first spot
%% in the 'user' array.
user (1).netStream := Net.WaitForConnection (port + usersOnline, user (1).ip)
%% Updates the 'usersOnline' variable showing that there is one person connected
usersOnline += 1
%% This process will autoconnect new users and auto-update the usersOnline variable
%% as long as there are less or equal to 15 users online
process connectNewClients
    loop
	if usersOnline <= 15 then
	    user (usersOnline).netStream := Net.WaitForConnection (port + usersOnline, user (usersOnline).ip)
	    usersOnline += 1
	end if
    end loop
end connectNewClients
%% Forks the 'connectNewClients' process so it will autoconnect new users
%% while in the loop
fork connectNewClients
%% Starts the loop
loop
    %% setscreen and View.Update will eliminate flickering
    setscreen ("offscreenonly")
    View.Update
    %% Clears the screen, and draws a black background
    cls
    drawfillbox (0, 0, maxx, maxy, 16)
    %% Sets the colorback to black, and the text to red
    colorback (16)
    color (12)
    %% Creates a delay so the program doesnt go too fast and overload
    delay (10)
    %% Shows that it is the server, displays which port it is awaiting
    %% the next conenction on, and the amount of users online
    locate (1, 1)
    put "Chat [Server] - By DanShadow"
    color (10)
    put "Awaiting Connection on Port: " ..
    color (0)
    put port + usersOnline
    color (10)
    put "Users Online: " ..
    color (0)
    put usersOnline - 1
    put ""
    %% Displays the IP address, and name of each user online
    for i : 1 .. usersOnline - 1
	color (12)
	put "User ", i, "> " ..
	color (10)
	put "[IP:" ..
	color (0)
	put user (i).ip, "" ..
	color (10)
	put "] | [Name: " ..
	color (0)
	put user (i).name, "" ..
	color (10)
	put "]"
	%% Checks if the netStream of user 'i' is connected
	if user (i).netStream > 0 then
	    %% If info is being sent by user 'i' then
	    if Net.LineAvailable (user (i).netStream) then
		%% Gets user 'i's update name 
		get : user (i).netStream, temp : *
		user (i).name := temp
		%% Gets user 'i's text he/she has sent
		get : user (i).netStream, temp : *
		user (i).msg := temp
		%% If the message isnt equal to nothing then
		if temp not= "" and temp not= "null" then
		    %% Sends that message to all users
		    for j : 1 .. (usersOnline - 1)
			put : user (j).netStream, user (i).msg
		    end for
		end if
	    end if
	end if
    end for

    %% If the user using the server presses a key, it enables the command
    %% menu, where the server can use special adminary abilities
    if hasch then
	getch (key)
	%% If the user of the server presses 'ENTER', it submits the
	%% command variable for processing to do special abilities
	if key = (KEY_ENTER) then
	    %% If the server decides to '@boot' somebody...
	    if command = "@boot" then
		locate (3, 30)
		%% This gets the ->USER NUMBER<- and boots him
		%% I didnt bother using strintok, so dont be stupid!
		%% If you type in a string, you'll crash the server!
		get command
		temp := "*** YOU HAVE BEEN BOOTED FROM THE SERVER ***"
		%% Tells the client he has been booted
		put : user (strint (command)).netStream, temp
		%% Closes the connection with that client
		Net.CloseConnection (user (strint (command)).netStream)
		user (strint (command)).netStream := 0
		%% Displays that the user is booted from the server
		user (strint (command)).name += " [BOOTED FROM SERVER]"
	    %% Slaps the client...same stuff as above            
	    elsif command = "@slap" then
		locate (3, 30)
		get command
		temp := "*** You have been slapped by the Server! ***"
		put : user (strint (command)).netStream, temp
	    %% Devours the clients soul
	    elsif command = "@devour" then
		locate (3, 30)
		get command
		temp := "*** The Server Devours Your Soul! ***"
		put : user (strint (command)).netStream, temp
	    %% Warns a client
	    elsif command = "@warn" then
		locate (3, 30)
		get command
		temp := "*** You have recieved a WARNING from the Server! ***"
		put : user (strint (command)).netStream, temp
	    end if
	    command := ""
	else
	    %% Adds the key being pressed to the string 'command'
	    command += key
	end if
    end if
    %% Displays the command being entered by the server
    locate (3, 20)
    color (10)
    put "Command: " ..
    color (0)
    put command
end loop
