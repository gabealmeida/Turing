% CYOAE! by NotNemesis
% HAX + CHEATS %
% 06011920 - sets all delays to 1

% Variables %
var w_play : int := Window.Open ("position:center;center,graphics:900;600,nobuttonbar") %Adjust the screen size if needed%
View.Set ("title:Choose Your Own Adventure Epic!")
var input : int
var sfm : int := 1
var d_climb : int := 1000

% Colouring %
colour (white)
colourback (7)
cls

loop
    % Title %
    if sfm = 1 then
	color (white)
	put "Choose Your Own Adventure Epic!"
	put "By NotNemesis"
	put ""
	put "Type [1] to start your adventure!"
	put ""
	sfm := 0
	get input
    end if

    if input = 06011920 then
	d_climb := 1
	put "CHEAT ENABLED! SPEED HACK!"
	get input
    end if

    if input = 1 then
	put ""
	colour (white)
	put "You wake up. It's Saturday. What will you do?"
	put "Go back to bed [2]"
	put "Get up [3]"
	put ""
	get input
    end if

    if input = 2 then
	put ""
	put "You go back to bed. When you wake up, it's Tuesday. Yikes!"
	put "You run to the bathroom to wash your face when suddenly the roof of your house lifts and a giant beast eats you alive!"
	put "Type [4] to continue"
	put ""
	get input
    end if

    if input = 3 then
	put ""
	put "You get up and put on your pink fuzzy slippers. You go downstairs. Where do you go?"
	put "Kitchen [5]"
	put "Living Room [6]"
	put ""
	get input
    end if

    if input = 4 then
	put ""
	colour (42)
	put "ACHIVEMENT GET! CLOSE CALL"
	colour (white)
	put "You get eaten by the beast and get knocked unconscious. When you wake up, you are in the belly of the beast."
	put "Luckily it's a robotic beast, so you don't get disolved. What will you do?"
	put "Crawl into a ball and cry [7]"
	put "Explore [8]"
	put ""
	get input
    end if

    if input = 5 then
	put ""
	put "You go to the kitchen and prepare yourself some toast. You go to the couch in the living room and turn on the TV."
	put "What will you watch?"
	put "Cartoons [9]"
	put "Sports [10]"
	put "News [11]"
	put "The Real Huntresses of Alaska [12]"
	put ""
	get input
    end if

    if input = 6 then
	put ""
	put "You go to the living room and sit down on the couch."
	put "You turn on the TV. What will you do?"
	put "Watch TV [13]"
	put "Play videogames [14]"
	put ""
	get input
    end if

    if input = 7 then
	put ""
	put "You crawl into a ball and cry. You cry so much that you get dehydrated and die."
	colour (12)
	put "YOU ARE DEAD!!!"
	colour (42)
	put "ACHIVEMENT GET! WUSS"
	colour (white)
	delay (1000)
	put "Restarting." ..
	for i : 1 .. 4
	    delay (1000)
	    put "." ..
	end for
	sfm := 1
	cls
    end if

    if input = 8 then
	put ""
	put "You decide to explore the beast's stomach. You're already down here and you didn't get burned up by any stomach acids. What's the worst that could happen?"
	put "After walking for a little bit, you wonder what should you do. Well, what will  you do?"
	put "Look for people [15]"
	put "Escape the way you came [16]"
	put "Escape out of the <back end> [17]"
	put ""
	get input
    end if

    if input = 9 then
	put ""
	put "Yay! Cartoons! You watch your favourite show, LoofahJoe TriangleShirt."
	delay (2000)
	put "The episode ends."
	put "What will you do now?"
	put "MORE CARTOONS!!! [18]"
	put "Go out [19]"
	put "Go out, through the window [20]"
	put ""
	get input
    end if

    if input = 10 then
	put ""
	put "You watch sports. It's football, Piggers vs The Touchdowns"
	put "The game ends and THE PIGGERS WON!!! Thye are definitely going all out this year."
	put "What will you do now?"
	put "Watch another game [21]"
	put "Go out [19]"
	put "Go out, through the window [20]"
	put ""
	get input
    end if

    if input = 11 then
	put ""
	colour (42)
	put "ACHIVEMENT GET! BORING"
	colour (white)
	put "You watch the news. That's boring, even the achivement knows that."
	put "It's a videogame, do something fun!"
	put "Will you still watch the news?"
	put "Yes, I know what I'm doing [22]"
	put "You're right, it is a game. LET'S GO DO SOME CRAZY STUFF! [23]"
	put "You're right, VIDEOGAME STUFF TIME! [24]"
	put "I DON'T KNOW WHAT I'M DOING! AHH! *jumps out of window* [36]"
	put ""
	get input
    end if

    if input = 12 then
	put ""
	put "Ugh, but that show sucks, come on! It got a 18/100 for last season."
	put "So you watch the stupid show."
	put "In the episode, Angela gets mad at Tony for giving her a polar bear for her birthday instead of giving her a baby seal."
	put "And Joseph and Sara spent their 132nd day in the tundra freezing to death and trying to reach a place where the ground isn't perma-permafrost."
	put "Sara shouldn't have chosen Joseph, he's a terrible navigator, especially in a place where you can't tell where you are"
	put "The episode ends. What will you do now?"
	put "Go out [19]"
	put "Go out, through the window [20]"
	put ""
	get input
    end if

    if input = 13 then
	put ""
	put "What will you watch?"
	put "Cartoons [9]"
	put "Sports [10]"
	put "News [11]"
	put "The Real Huntresses of Alaska [12]"
	put ""
	get input
    end if

    if input = 14 then
	put ""
	put "YAY! VIDEOGAMES!"
	put "You play your favourite game. Hopefully this time you can beat that last level."
	delay (4000)
	put "Yes! You beat it!"
	delay (4000)
	put "Yes! Another one done!"
	delay (4000)
	put "And another one!"
	delay (4000)
	put "And another one!"
	delay (4000)
	put "That one was hard."
	put "Will you try again?"
	put "Yes! I must! [48]"
	put "No, let's go out [19]"
	put "No, let's go out through the window [20]"
	put ""
	get input
    end if

    if input = 15 then
	put ""
	put "You start looking in the belly of the beast for people."
	put "Why would you look for people in a beast?"
	delay (2500)
	put "You arrive at a crossroads. Where will you go?"
	put "To the left [25]"
	put "To the right [26]"
	put ""
	get input
    end if

    if input = 16 then
	put ""
	put "Well, time to climb out of the windpipe."
	delay (500)
	put "Oh look! A ladder. Now you can climb out easily."
	put "But the ladder looks REALLY tall."
	put "You start climbing the ladder."
	for i : 1 .. 60
	    delay (d_climb)
	    put "."
	end for
	put "Whew! You made it to the top of the beast."
	colour (42)
	put "ACHIVEMENT GET! SAFE WAY OUT!"
	colour (white)
	put "What will you do now?"
	put "Jump out of the mouth of the beast [27]"
	put "Jump back in [28]"
	put "Crawl into a ball and cry [29]"
	put ""
	get input
    end if

    if input = 17 then
	put ""
	put "Oh god, really?"
	delay (4000)
	put "Are you really sure that you want to do that?"
	delay (4200)
	put "Do you even know what I mean by back end?"
	delay (4152)
	put "Of course I turned the sink off at home, I'm not stupid!"
	delay (4443)
	put "Fine! I'm leaving you!"
	colour (42)
	put "ACHIVEMENT GET! LEFT BY COMPUTER!"
	colour (white)
	delay (1000)
	put "Restarting." ..
	for i : 1 .. 4
	    delay (1000)
	    put "." ..
	end for
	sfm := 1
	cls
    end if

    if input = 18 then
	put ""
	put "Yay! Cartoons! (again) You watch your favourite show again"
	delay (2000)
	put "The episode ends."
	put "What will you do now?"
	put "Go out [19]"
	put "Go out, through the window [20]"
	put ""
	get input
    end if

    if input = 19 then
	put ""
	put "You grab your jacket and sit down to tie your shoes."
	delay (6000)
	put "Well, those shoes don't look right. Let's try again."
	delay (6000)
	put "Tying shoes is hard anyways. Everyone screws up anyways."
	put "Will you continue to try to tie your shoes?"
	put "Nah, I'm fine [30]"
	put "I must try again! [31]"
	put ""
	get input
    end if

    if input = 20 then
	put ""
	colour (42)
	put "ACHIVEMENT GET! FUN VIDEOGAME STUFF 1!"
	colour (white)
	put "Yay! You did something cool for once in the game."
	put "When you land on your front lawn, there is an old lady walking her chihuahua. They're both scared."
	put "She stares at you. You're covered in glass shards."
	delay (2677)
	put "She screams and runs away, dragging her chihuahua along with."
	put "You're good with making friends."
	put "What will you do now?"
	put "Look at the sun [32]"
	put "Walk to the bus station [33]"
	put "Steal a car [34]"
	put ""
	get input
    end if

    if input = 21 then
	put ""
	put "You watch another game."
	delay (4000)
	put "YEAH! THE PIGGERS TOTALLY DESTROYED THE OTHER TEAM DURING THE FIRST HALF!"
	delay (1500)
	put "JIM!!! STOP FUMBLING!"
	delay (1500)
	put "OH COME ON BILL! YOU CALL THAT YOUR BEST PLAY!?"
	put "You lose your marbles and grab the TV, then throw it out of the window."
	delay (600)
	colour (12)
	put "Whoops!"
	colour (white)
	put "The TV you threw hit and killed an old lady and her chihuahua."
	colour (42)
	put "ACHIVEMENT GET! LOSE YOUR MARBLES!"
	colour (white)
	put "WHAT HAVE YOU DONE!? IT'S A VIDEOGAME! YOU DON'T KILL PEOPLE IN A VIDEOGAME!"
	put "(Actually, it's usually fine if you kill someone in a videogame but this is an  adventure)"
	put "Police sirens echo throughout the area."
	put "You escape out of the window and start your life of hard crime."
	delay (700)
	put "Type [35] to continue."
	put ""
	get input
    end if

    if input = 22 then
	put ""
	put "Oh, okay Mr/Mrs/Miss/Dr. Confident."
	put "What channel do you go to?"
	put ""
	get input
    end if

    if input = 23 then
	put ""
	put "So you want to do crazy stuff, huh?"
	put "You run outside to the nearest dumpster and find a glass bottle."
	put "You break the bottle and find a racoon."
	put "You try to attack the racoon, but he claws out your eyes."
	put "You escape the battle blind."
	put "You try to find a hospital, but you fall off a cliff."
	delay (4500)
	put "You land safely somehow."
	put "You wander forward into a busy highway..."
	colour (12)
	put "YOU ARE DEAD!!!"
	colour (white)
	delay (1000)
	put "Restarting." ..
	for i : 1 .. 4
	    delay (1000)
	    put "." ..
	end for
	sfm := 1
	cls
    end if

    if input = 24 then
	put ""
	colour (white)
	put "YEAH! VIDEOGAME STUFF!"
	put "You run outside and find a turtle, then stomp on it and kick it."
	put "Then you run to a random car and steal it."
	put "But you don't know how to drive!"
	put "You crash into some trash cans and the car flips over and explodes!"
	colour (42)
	put "ACHIVEMENT GET! VIDEOGAME LOGIC!"
	colour (12)
	put "YOU ARE DEAD!!!"
	colour (white)
	delay (1000)
	put "Restarting." ..
	for i : 1 .. 4
	    delay (1000)
	    put "." ..
	end for
	sfm := 1
	cls
    end if

    if input = 25 then
	put ""
	put "To the left then, huh."
	put "What are you looking at me for? It's not wrong. Well, I don't think it is."
	put "So you walk to the left."
	for i : 1 .. 5
	    delay (d_climb)
	    put "Walking..."
	end for
	put "OOH! LOOK LOOK LOOK! SHINY THINGS!"
	put "I guess the beast ate some shiny stuff."
	put "What will you do?"
	put "Jump in the shiny stuff! [38]"
	put "Walk back. Shiny things don't amuse me. [39]"
	put ""
	get input
    end if

    if input = 26 then
	put ""
	put "You walk to the right."
	for i : 1 .. 5
	    delay (d_climb)
	    put "Walking..."
	end for
	put "Out of the corner of your eye, you see some people surrounding a metal object and you hide behind a tire on the ground."
	put "What will you do?"
	put "Say hi [40]"
	put "Stay here and hope they find you [41]"
	put "Scream ''Stranger Danger!'' and run away. [42]"
	put "Fake an injury and cry loudly [43]"
	put ""
	get input
    end if

    if input = 27 then
	put ""
	colour (42)
	put "ACHIVEMENT GET! DAREDEVIL!"
	colour (white)
	put "You jump out and make yourself into the form of a cannonball, preparing to land."
	put "But you don't know what material is underneath you!"
	delay (2000)
	put "Luckily, you land in a giant box of feathers in the feather warehouse next to the Taco Hut."
	put "You manage to get out of the box without any harm and head for the Taco Hut."
	put "Type [44] to continue"
	put ""
	get input
    end if

    if input = 28 then
	put ""
	put "All this work just to jump back in?"
	put "Okay, you're the boss."
	put "You jump."
	for i : 1 .. 60
	    delay (d_climb)
	    put "."
	end for
	put "Splat! You land hard and have nothing to break your fall."
	colour (12)
	put "YOU ARE DEAD!"
	delay (55000)
    end if

    if input = 29 then
	put ""
	put "So sad for a big boy/girl like you to get so far and start to cry."
	put "You start to cry. The beast that you are in and tries to talk to you, but he accidentally spits you out."
	put "Splat! You land far away from the beast and die on inpact from the fall."
	colour (12)
	put "YOU ARE DEAD!"
	colour (white)
	delay (55000)
    end if

    if input = 30 then
	put ""
	put "Okay, I hope you're fine. I've never seen ANYBODY who has walked more than a few feet with their shoelaces      untied. Plus, it's dangerous to go with them like that."
	put "Oh, fine. >:("
	put "You try to walk, but you keep on tripping."
	put "Will you tie your shoes now?"
	put "Yeah, okay [45]"
	put "NO! [46]"
	put "Make me! [47]"
	put ""
	get input
    end if

    if input = 31 then
	put ""
	put "You really want to prove that you can tie your shoes, hmm?"
	put "You tie your shoes one last time and GET THEM RIGHT!"
	%    put "achivement"
	put "Where do you want to go now that you've tied your shoes?"
	put "Bus Stop [49]"
	put "Taco Hut [50]"
	put "Mario & Luigi's Spinnin' Spaghettii Diner [51]"
	put "Pineapple Burger [52]"
	get input
    end if

    if input = 32 then
	put ""
	put "Cool! I watched''Science That!''the other day and heard you can get superpowers by looking at the sun!"
	put "You stare into the sun" ..
	for i : 1 .. 5
	    delay (d_climb)
	    put "." ..
	end for
	put ""
	put "Why is everything dark now!?"
	put "Oh no! You went blind!"
	put "At this point, you can't continue your adventure :("
	delay (9000)
	put "Restarting." ..
	for i : 1 .. 4
	    delay (1000)
	    put "." ..
	end for
	sfm := 1
	cls
    end if





end loop
