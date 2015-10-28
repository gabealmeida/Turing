var cyoae : int := Window.Open ("position:center;center,graphics:1100;1000,nobuttonbar") %Adjust the screen size if needed%
View.Set ("title:Mario Simulatior Turing Edition Alpha")

%%%%%%%%%% Variables %%%%%%%%%%
var start : string
var input : string
var code : string
var code2 : string
var code3 : string

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% Text colouring %%%%%%%%%%
colour (white)
colourback (red)
cls
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%% title screen %%%%%%%%%%%%%
    % Title %
put "Mario Simulatior Turing Edition DEMO"
put "By Sonason"
put ""
put "Version 0.2"
put "Type [B] to start your adventure!"
put "Type [M] for menu"
put ""
get start

%%%%%%% menu %%%%%%%%%%

if start = "m" or start = "M" then
cls
    put ""
    put "CREDITS [1]"
    delay (200)
    put "NEWS [2]"
    delay (200)
    put "START GAME [B]"
    delay (200)
    put "TYPE YOUR CHOICE."
    put ""
    get start
else
end if

if start = "1" then
cls
    put ""
    put "Mario Simulatior Turing Edition"
    put "DEMO Version"
    delay (999)
    colour (9)
    put "ORIGINAL CODE"
    colour (14)
    put "NotNemesis"
    delay (999)
    colour (9)
    put "REPROGRAMMING"
    colour (14)
    put "Sonason"
    delay (999)
    colour (9)
     put "ORIGINAL IDEA"
    colour (14)
    put "SMG4"
    delay (999)
    put "Very special thanks NotNemesis for the support and code!"
    delay (999)
    colour (white)
    put "Pulse Labs (C) 2014"
    colour (42)
    put "[B] to start game"
    put ""
    get start
else
end if

if start = "2" then
    put ""
    colour (14)
    put "NEWS"
    colour (42)
    put "October 2, 2015"
    colour (white)
    put "First alpha!(Alpha 1)"
    colour (42)
    put "November 1, 2015"
    colour (white)
    put "Expanded story!(Alpha 2)"
    put "[B] to start game"
    put ""
    get start
else
end if

%%%%%% game %%%%%%%
if start = "B" or start = "b" then
put ""
    put "Hello and welcome to Mario Simulator: Turing Edition!"
    put "You will start by noticing options to follow."
    put "Type the number in to go to that option."
    put "Let's a go! [0]"
    get input
else
end if

if input = "0" then
    put ""
    put "Our story starts with the princess once again being kidnapped by Bowser."
    put "What will Mario do now?"
    delay (999)
    put "Nothing!(1)"
    delay (999)
    put "Eat spagetti(2)"
    delay (999)
    put "Get another princess(5)"
    delay(999)
    put "Get that mofo!(6)"
    get input
else
end if
    
if input = "1" then
put ""
put "Mario:"
    delay (999)
    put "Hey, stinky!"
    delay (500)
    put "'Explosion sound'"
    delay (1500)
    colour (12)
    put "GAME OVER, YEAH!"
    delay (500)
    put "What the heck!?"
    end if
   
if input = "2" then
    put ""
 put "Mario: 'Eating noises'"
    put "Seriously!?"
    delay (999)
    put "You're eating that stuff of all times NOW?"
    delay (999)
    put "Eat more spagetti(3)"
    delay (999)
    put "Fine! Save the princess(6)"
    get input
else
end if

if input = "3" then
    put ""
    put "Mario: 'Eating noises'"
    delay (999)
    put "Okay, I can wait for you to finish eating."
    delay (999)
    put "It's not like the entire Mushroom Kingdom is at risk..."
    delay (999)
    put "Eat even more spagetti(4)"
    delay (999)
    put "Fine! Save the princess(6)"
    get input
else
end if

if input = "4" then
    put ""
    color (white)
    put "Mario: 'Eating noises'"
    delay (999)
    put "Seriouly, how much longer do you have to eat!?"
    delay (999)
     put "Mario:"
    put "Hey, I'm hungry!"
    delay (999)
    put "Well, maybe this will make you hurry up!"
    delay (2000)
      put "Mario:"
    put "Wait, where'd that bomb-"
      delay (500)
    put "BOOM!"
     delay (1500)
    colour (12)
    put "GAME OVER, YEAH!"
end if

if input = "5" then
put ""
    put "Phone: 'Rings'"
    delay (999)
    put "Toad:(on phone)"
    put "Oh, hey Mario!"
    delay (999)
    put "Mario:"
    put "Yes, yes..."
    put "Is this where I can hire a princess?"
    delay (2000)
    put "Toad:"
    put "Take a look!"
    delay (2000)
    put "Mario:"
    put "NO!"
    delay (999)
    put "'Phone hangs up'"
    delay (999)
    put "Mario:"
    put "I'm out! I'm gonna grab some food!"   
     delay (1500)
    colour (12)
    put "GAME OVER, YEAH!"
    put "(Mario Gave Up!)"
end if

if input = "6" then
    put ""
    put "Mario:"
    put "This is gonna be one of those days, isn't it?"
    delay (999)
    put "'Cue unexciting chase sequence'"
    delay (5000)
    put "Mario:"
    put "'pant' 'pant' 'gasp'"
    put"I'm tired!"
    delay (999)
    put "Well, looks like someone hasn't been exercising lately."
    delay (999)
    put "Mario:"
    put "Hey!"
    delay (500)
    put "Oh! Look at that!"
    delay (2000)
    put "Well, looks like Mario found some modes of transportation."
    put "Which one should he choose?"
    delay (999)
    put "Warp Pipe(7)"
    delay (999)
    put "Kart(8)"
    delay (999)
    put "Yoshi(15)"
    get input
    else
end if

if input = "7" then
    put ""
    put "'Warp Pipe sound'"
    delay (999)
    put "Bob-omb: Welcome to my shop!"
    delay (999)
    put "Mario:"
    put "Hmmm..."
    delay (1500)
    put "Mario:"
    put "Hey, how much are these bombs?"
    delay (999)
    put "Bob-omb:"
    put "You want bombs!? I'LL GIVE YOU BOMBS!"
    delay (999)
    put "Mario:"
    put "Woah! AUGH!"
    delay (250)
    put "KABOOM!!!"
     delay (1500)
    colour (12)
    put "GAME OVER, YEAH!"
end if

if input = "8" then
    put ""
    put "Mario:"
    put "AW YEAH! KART TIME!"
    put "'start uninspired car chase'"
    delay (3000)
    put "'police sirens'"
    delay (999)
    put "Mario:"
    put "Dammit!"
    delay (500)
    put "Uh oh! Looks like Mario's being arrested for speeding."
    put "What now?"
    delay (999)
    put "Bust out secret weapon(9)"
    delay (999)
    put "Wait for the cops(10)"
    get input
    else
    end if
    
    if input = "9" then
    put ""
    put "Mario:"
    put "SUPER MARIO-"
    put "'fire sound'"
    delay (1200)
    put "'put tree burining sound fx here'"
    delay (500)
    put "Mario:"
    put "Now I'm out of tricks."
    delay (999)
    put "Please type '10' to continue."
    get input
    else
    end if
    
    if input = "10" then
    put ""
    put "The police officer comes up to Mario's car where-"
    delay (999)
    put "Mario:"
    put "Do you really have to narrate my situation?"
    delay (999)
    put "Police Officer:"
    put "Hey! You were speeding back there,"
    put "so I'm gonna have to take you to the station."
    delay (999)
    put "Mario:"
    put "Or else what?"
    delay (999)
    put "Officer:(loaing his gun)"
    put "We could send you to prison..."
    delay (999)
    put "Mario:"
    put "Augh!"
    delay (999)
    put "'Convince' the cop(11)"
    delay (999)
    put "Get outta here!(12)"
    get input
    else
    end if
    
    
if input = "11" then
    put ""
    put "Mario:"
    put "Look officer..."
    delay (999)
    put "Mario:"
    put "Is there..."
delay (500)
    put "(:0"
    delay (500)
put "...'anything' I can do to get out of this?"
    delay (999)
    put "Officer:"
    put "AUGGGH!"
    delay (999)
    put "Mario:"
    put "Great! Prison! Thanks, guys!"
     delay (1500)
    colour (12)
    put "GAME OVER, YEA-"
    color (white)
    put "Mario:"
    put "Ah, SHADDAP!"
    end if

    if input = "12" then
    put ""
    put "Mario:"
    put "Sorry officer, I'm outta here!"
    delay (999)
    put "Police Officer:"
    put "Hey! Get back here you!"
    delay (500)
    put "'cue much more exciting chase scene'"
    delay (2000)
    put "Mario:"
    put "Haha! They'll never get me!"
    delay (999)
    put "Oh no! Mario's driving towards a roadblock!"
put "Aren't you going to warn him!?"
delay (999)
    put "'Mario! Look out!'(13)"
    delay (999)
    put "Nope.(14)"
    get input
    else
    end if

    if input = "13" then
    put ""
    put "Player:"
    put "Hey! Look out!"
    delay (999)
    put "Mario:"
    put "Huh? WAH!"
delay (500)
   put "Pewf! Thanks guys!"
    delay (999)
put "Officer:"
    put "Stahp right dere!"
    delay (999)
    put "Mario:"
    put "Oh COME ON!"
    delay (1500)
    put "Mario:"
    put "Great! Prison! Thanks, guys!"
     delay (1500)
    colour (12)
    put "GAME OVER, YEA-"
    color (white)
    put "Mario:"
    put "Ah, SHADDAP!"
    end if

     if input = "14" then
    put ""
    put "Bam!"
    put "Mario:"
    put "AUGH!"
    delay (500)
    put "'Warp Pipe sound'"
    delay (1500)
    put "'Warp pipe sound"
    put "Mario:"
    put "Oof!"
    delay (500)
put "Mario:"
put "Well, looks like I'm on foot from here..."
delay (999)
put "Please press '17' to continue."
    get input
    else
    end if

     if input = "15" then
    put ""
    put "Mario:"
    put "Alright Yoshi! We're on another journey!"
    delay (1200)
    put "Yoshi:"
    put "Yay!"
    delay (5000)
    put "1 hour later..."
    delay (500)
    put "Mario:"
    put "Hurry up already!"
    delay (999)
    put "Random Old Man:"
    put "Finally! I'm faster than something!"
    delay (999)
    put "Mario:"
    put "If this keeps up, I'm never gonna save her in time!"
   delay (999)
   put "Use Curry!(16)"
    get input
    else
    end if

    
     if input = "16" then
    put ""
    put "Mario:"
    put "Hey Yoshi! Have this!"
    delay (999)
    put "Yoshi:"
    put "?"
    delay (999)
    put "Yoshi:"
    put "AUGH! HOT! HOT!"
    delay (999)
    put "Mario:"
    put "Oof!"
    delay (500)
put "Mario:"
put "Well, looks like I'm on foot from here..."
delay (999)
put "Please press '17' to continue."
    get input
    else
    end if

    if input = "17" then
    put ""
    put "Mario:"
    put "Well, how coincidental: a town in the middle of nowhere!"
    delay (1500)
    put "Old Lady:"
    put "Oh god! Please help me!"
   put "My poor cat is up there!"
     delay (999)
    put "Mario:"
     put "Jeez, I'm torn: I know I have to save Peach..."
     delay (999)
    put "...but I can't leave that cat up there!"
    delay (999)
    put "What do I do!?"
delay (999)
put "I got a princess to save!(18)"
delay (999)
put "Help the old lady!(19)"
    get input
    else
    end if

    
 if input = "18" then
    put ""
    put "Mario:"
    put "I'm really sorry ma'm! I've got a princess to rescue!"
    delay (2000)
    put "Eep! A Chain Chomp!"
    put "Little Girl:"
   put "Oh no! Chompy got off his leash!"
delay (999)
put "Do the Saftey Dance!(20)"
delay (999)
put "Throw stuff at it!(21)"
    get input
    else
    end if

    
    if input = "19" then
    put ""
    put "Mario:"
    put "I can spare a few minutes..."
    delay (5000)
    put "A few minutes later..."
    put "Old Lady:"
   put "Thank you sir! Here, it's not much..."
  delay (2000)
  put "You got a stick and 5 coins!"
  delay (999)
    put "Mario:"
  put "Eep! A Chain Chomp!"
  delay (999)
    put "Little Girl:"
   put "Oh no! Chompy got off his leash!"
delay (999)
put "Do the Saftey Dance!(20)"
delay (999)
put "Throw stuff at it!(21)"
delay (999)
put "Use the stick!(22)"
    get input
    else
    end if

    if input = "20" then
put ""
put "Mario:"
    put "SAFETY DANCE TIME!"
    delay (500)
    put "'put music that fits with scenario here'"
    delay (2000)
    put "Mario is now safe from everything!"
    delay (999)
    put "...except for Chain Chomps."
    delay (1500)
    colour (12)
    put "GAME OVER, YEAH!"
    end if

    
    if input = "21" then
put ""
put "Mario:"
    put "Stay back you! I'm armed!"
    delay (500)
    put "There goes the coins..."
    delay (500)
    put "Where'd I get a Mushroom!?"
    delay (500)
    put "C'mon, there's gotta be something somewhere..."
    delay (500)
    put "Super Star? Now I'm dead."
    delay (999)
    put "Chompy:"
    put "WOOF!"
    delay (1500)
    colour (12)
    put "GAME OVER, YEAH!"
    end if

    
if input = "22" then
put ""
    put "Hello and thank you for playing the Alpha!"
    put "This is the end for now, but expect updates soon!"
    put "Bye!"
    put "-Sonason, dev"
end if

