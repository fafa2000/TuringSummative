% Text_Adventure_Game
%By Fatemeh MousaviKarimi & Akshaya Sureshkumar

setscreen ("graphics")
var choice : string
var name : string
var dotx, doty : int %for sand grain graphics
var font := Font.New ("Times:60:bold,italic")


%Intro music
sound (300, 100)
sound (400, 100)
sound (500, 150)
sound (600, 100)
sound (500, 150)
sound (400, 100)
sound (300, 100)
sound (300, 80)
sound (400, 80)
sound (500, 100)
sound (600, 80)
sound (500, 80)
sound (400, 80)
sound (300, 80)
sound (300, 100)
sound (400, 100)
sound (500, 150)
sound (600, 100)
sound (500, 150)
sound (400, 100)
sound (300, 100)
sound (100, 1)

%jungle picture
drawfill (300, 300, 52, 52) %Blue background
drawfilloval (maxx - 50, maxy - 50, 50, 50, yellow)
var x : int := 10
var y : int := 10
var x1 : int := 40
var y1 : int := 150
drawfillbox (0, 0, maxx, 20, green)     %ground
drawfillbox (x, y, x1, y1, 136)     %treetrunk  W=30  L=140
drawfilloval (x + 15, 130, 50, 50, 119)     %treeleaves middle of x and 2o less than y
for i : 1 .. 13
    drawfillbox (x + 50, y, x1 + 50, y1, 135)
    drawfilloval (x + 15, 130, 50, 50, 119)
    x := x + 50
    x1 := x1 + 50
end for
delay (3000)

%.............................................................ACTION STARTS........................................................................................

put "Hello what's your name?"
get name
put ""
put name, " you are stranded in a jungle. You have no idea how you got here."
put "It's currently in the afternoon and the sun is high up in the sky"

loop     %repeat left/right question if given invalid answer
    put name, " you have a choice of going:"
    put "a.Left"
    put "b.Right"
    put "What is your choice?"
    get choice
    exit when choice = "a" or choice = "b"
end loop

cls
case choice of
    label "a" :
	put name, " you have reached a clearing in the jungle."
	put "It is surrounded by a lot of trees and you can hear birds singing."
	delay (4000)
	for i : 1 .. 3         %sound of bird chirping
	    sound (20000, 50)
	    sound (15000, 50)
	    sound (14000, 50)
	    sound (100, 50)
	    sound (20000, 50)
	    sound (15000, 50)
	    sound (14000, 50)
	    sound (100, 1)
	end for
	cls
	put "There are three identical paths in front of you. Both look ominous;) Which path do you follow?"
	loop                    %repeat path question until givin valid answer
	    put "Path1, Path2 or path3 0_0?"
	    get choice
	    exit when choice = "path1" or choice = "path2" or choice = "path3"
	end loop
	cls

	if choice = "path1" then
	    put "RAWWR"
	    put "IT'S A TIGER!!!!!!! OH MY GOSH! WHATCHA GONNA DO NOW HUH?"
	    loop         %repeat tiger question if given invalid ans
		put "Will you a.hunt or b.run away ? "
		get choice
		cls
		if choice = "a" then
		    %Savage person
		    drawfill (maxx, maxy, 76, 76) %background
		    drawfillbox (0, 0, maxx, 50, green) %ground
		    drawline (400, 80, 400, 190, black) %body
		    drawline (400, 80, 380, 10, black) %left leg
		    drawline (400, 80, 420, 10, black) %right leg
		    drawline (400, 160, 350, 220, black) %left arm
		    drawline (400, 160, 430, 100, black) %right arm
		    drawline (200, 220, 500, 220, black) %spear
		    drawline (200, 220, 220, 230, black)
		    drawline (200, 220, 220, 210, black)
		    drawfilloval (400, 220, 30, 40, white) %head
		    put "OH. MY .GOD!"
		    put name, " YOU JUST KILLED A TIGER YOU HEARTLESS PERSON!!!!!!!!!!!!!"
		    delay (3500)
		    %Blood
		    for i : 1 .. 500
			var bloodx, bloody : int
			randint (bloodx, 0, maxx)
			randint (bloody, 0, maxy)
			drawfilloval (bloodx, bloody, 20, 40, red)
			delay (10)
		    end for
		    delay (50)
		    cls
		    put "You cook the tiger and eat it for lunch."
		    put "You realize that the jungle life is for you."
		    put "You have awakened the true beast within and have decided to make the jungle your home"
		    put "You lived happily never after;)"
		    delay (11000)
		    cls
		    Font.Draw ("The End ;-)", 100, maxy div 2, font, red) %ending comment
		elsif choice = "b" then
		    put "UH OH. THAT TIGER DOESN'T LOOK HAPPY!!!"
		    delay (500)
		    put "AAAAAHHHHHHHH!!!!!!!!!!!!!!!!!!!!!!!!!!"
		    delay (900)
		    %Blood
		    for i : 1 .. 500
			var bloodx, bloody : int
			randint (bloodx, 0, maxx)
			randint (bloody, 0, maxy)
			drawfilloval (bloodx, bloody, 20, 40, red)
			delay (10)
		    end for
		    delay (100)
		    cls
		    put "You have died by being repeatedly bitten x_x"
		    delay (3000)
		    cls
		    Font.Draw ("Game Over ;-)", 100, maxy div 2, font, red)
		else
		    put "invalid answer"
		end if
		exit when choice = "a" or choice = "b"
	    end loop
	elsif choice = "path2" then
	    put name, " you have successfully reached the end of the jungle."
	    put "Now you walk 50 miles until you reach your house."
	    put "You go in and act like nothing ever happened:)"
	    delay (7000)
	    cls
	    Font.Draw ("The End ;-)", 100, maxy div 2, font, red)
	elsif choice = "path3" then
	    %Hobo
	    drawoval (300, 190, 130, 150, black)
	    drawfilloval (250, 200, 20, 25, black) %eye
	    drawfilloval (350, 200, 20, 25, black) %eye
	    drawline (240, 100, 360, 100, black)
	    drawfillarc (300, 220, 170, 150, 0, 180, yellow)
	    delay (650)
	    cls
	    drawoval (310, 200, 140, 160, black)
	    drawfilloval (260, 210, 30, 35, black) %eye
	    drawfilloval (360, 210, 30, 35, black) %eye
	    drawline (250, 110, 370, 110, black)
	    drawfillarc (310, 230, 180, 160, 0, 180, yellow)
	    put "You see a strange looking person sitting under a tree and staring at you O.O"
	    delay (3500)
	    put "HE'S A HOBO!"
	    delay (2000)
	    cls
	    loop
		put "will you:"
		put "a. Ignore him and move on with your fruitless journey"
		put "b. Talk to the poor dude :/"
		get choice
		cls
		if choice = "a" then
		    %Blood
		    for i : 1 .. 500
			var bloodx, bloody : int
			randint (bloodx, 0, maxx)
			randint (bloody, 0, maxy)
			drawfilloval (bloodx, bloody, 20, 40, red)
			delay (10)
		    end for
		    delay (500)
		    cls
		    put name, " the hobo just stabbed you in the back!! You shouldn't have ignored him -_-"
		    delay (2000)
		    put "Apparently, getting stabbed in the back causes death x_x"
		    delay (5000)
		    cls
		    Font.Draw ("Game Over ;-)", 100, maxy div 2, font, red)
		elsif choice = "b" then
		    put name, " you and the hobo become close friends and work together to exit the dense"
		    put " jungle."
		    put "You finally escape after like 5 hours"
		    delay (6000)
		    cls
		    Font.Draw ("The End ;-)", 100, maxy div 2, font, red)
		else
		    put "Invalid choice"
		end if
		exit when choice = "a" or choice = "b"
	    end loop
	end if


    label "b" :

	%Drawing quicksand
	cls
	drawfill (300, 300, 52, 52)         %Blue background
	drawfillbox (0, 0, maxx, 200, green)         %ground
	drawfilloval (400, 100, 250, 60, 90)         %sand
	for i : 1 .. 50      %sand grains
	    randint (dotx, 200, 600)
	    randint (doty, 50, 150)
	    drawfilloval (dotx, doty, 1, 1, 66)
	end for
	%Ripples
	drawarc (400, 100, 50, 10, 180, 360, 66)
	drawarc (400, 100, 79, 20, 0, 180, 66)
	drawarc (400, 100, 90, 30, 270, 360, 66)
	drawarc (400, 100, 95, 35, 180, 260, 66)

	%Draw person
	drawfilloval (400, 200, 20, 28, white) %head
	drawfilloval (390, 210, 2, 5, black) %left eye
	drawfilloval (410, 210, 2, 5, black) %right eye
	drawfilloval (400, 190, 10, 14, black)
	drawline (400, 100, 400, 170, black) %70 units long
	drawline (400, 150, 370, 150, black) %left
	drawline (370, 150, 360, 180, black) %left
	drawline (400, 150, 430, 170, black) %right
	drawline (430, 170, 440, 200, black) %right
	delay (1000)

	put "You stepped into quicksand!"
	put "Think fast ", name
	loop         %repeat quicksand question until given valid ans
	    put "Do you stay still(a) or do you struggle(b)"
	    put ""
	    get choice
	    cls
	    case choice of
		label "a" :
		    put "You find a tree branch and use it to get out. YOU'RE ALIVE!!! -_-"
		    put "You walk for a few hours before finding the exit, now you can finally walk home."
		    put "You are FREE!!!!"
		    delay (5500)
		    cls
		    Font.Draw ("The End ;-)", 100, maxy div 2, font, red)
		label "b" :
		    put "I'm sorry to say that you have zero survival instincts ;)"
		    put "You sink and die x_x"
		    delay (4000)
		    cls
		    Font.Draw ("Game Over ;-)", 100, maxy div 2, font, red)
		label :
		    put "Invalid choice"
	    end case
	    exit when choice = "a" or choice = "b"
	end loop
    label :
	put "invalid answer"
end case

