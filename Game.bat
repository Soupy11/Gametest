@echo off
mode 10
TITLE Harambe															
:startup
cls
echo Would you like to start?
echo.
echo 1. Start the game
echo 2. Settings
echo 3. Leave
echo.
set /p input0=Enter: 
if %input0% lss 1 goto startup
if %input0% equ 1 goto begin
if %input0% equ 2 goto settings
if %input0% equ 3 exit
if %input0% geq 4 goto startup
goto startup															::GOOD
:settings
cls
echo What would you like to change?
echo.
echo 1. Text Color
echo 2. Background Color
echo 3. Font Size
echo 4. Back
echo.
set /p input11=Enter: 
if %input11% lss 1 goto settings 
if %input11% equ 1 goto textcolor
if %input11% equ 2 goto bgcolor
if %input11% equ 3 goto fontsize
if %input11% equ 4 goto startup
if %input11% geq 5 goto settings															::GOOD
:textcolor
cls
echo What Color would you like?
echo.
echo 1.  Black
echo 2.  Blue
echo 3.  Light Blue
echo 4.  Green
echo 5.  Light Green
echo 6.  Aqua
echo 7.  Light Aqua 
echo 8.  Red
echo 9.  Light Red
echo 10. Purple
echo 11. Light Purple
echo 12. Yellow
echo 13. Light Yellow
echo 14. White
echo 15. Bright White
echo 16. Gray
echo.
echo 17. Back to settings
echo.
set /p input12=Enter: 
if %input12% lss 1  goto textcolor
if %input12% equ 1  color %input13%0
if %input12% equ 2  color %input13%1
if %input12% equ 3  color %input13%9
if %input12% equ 4  color %input13%2
if %input12% equ 5  color %input13%a
if %input12% equ 6  color %input13%3
if %input12% equ 7  color %input13%b
if %input12% equ 8  color %input13%4
if %input12% equ 9  color %input13%c
if %input12% equ 10 color %input13%5
if %input12% equ 11 color %input13%d
if %input12% equ 12 color %input13%6
if %input12% equ 13 color %input13%e
if %input12% equ 14 color %input13%7
if %input12% equ 15 color %input13%f
if %input12% equ 16 color %input13%8
if %input12% equ 17 goto settings
if %input12% geq 18 goto textcolor
if %input12% equ 1  set input12=0
if %input12% equ 2  set input12=1
if %input12% equ 3  set input12=9
if %input12% equ 4  set input12=2
if %input12% equ 5  set input12=a
if %input12% equ 6  set input12=3
if %input12% equ 7  set input12=b
if %input12% equ 8  set input12=4
if %input12% equ 9  set input12=c
if %input12% equ 10 set input12=5
if %input12% equ 11 set input12=d
if %input12% equ 12 set input12=6
if %input12% equ 13 set input12=e
if %input12% equ 14 set input12=7
if %input12% equ 15 set input12=f
if %input12% equ 16 set input12=8
goto settings 															::GOOD
:bgcolor
cls
echo What background color would you like?
echo.
echo 1.  Black
echo 2.  Blue
echo 3.  Light Blue
echo 4.  Green
echo 5.  Light Green
echo 6.  Aqua
echo 7.  Light Aqua 
echo 8.  Red
echo 9.  Light Red
echo 10. Purple
echo 11. Light Purple
echo 12. Yellow
echo 13. Light Yellow
echo 14. White
echo 15. Bright White
echo 16. Gray
echo.
echo 17. Back to settings
echo.
set /p input13=Enter: 
if %input13% lss 1  goto bgcolor
if %input13% equ 1  color 0%input12%
if %input13% equ 2  color 1%input12%
if %input13% equ 3  color 9%input12%
if %input13% equ 4  color 2%input12%
if %input13% equ 5  color a%input12%
if %input13% equ 6  color 3%input12%
if %input13% equ 7  color b%input12%
if %input13% equ 8  color 4%input12%
if %input13% equ 9  color c%input12%
if %input13% equ 10 color 5%input12%
if %input13% equ 11 color d%input12%
if %input13% equ 12 color 6%input12%
if %input13% equ 13 color e%input12%
if %input13% equ 14 color 7%input12%
if %input13% equ 15 color f%input12%
if %input13% equ 16 color 8%input12%
if %input13% geq 18 goto bgcolor
if %input13% equ 1  set input13=0
if %input13% equ 2  set input13=1
if %input13% equ 3  set input13=9
if %input13% equ 4  set input13=2
if %input13% equ 5  set input13=a
if %input13% equ 6  set input13=3
if %input13% equ 7  set input13=b
if %input13% equ 8  set input13=4
if %input13% equ 9  set input13=c
if %input13% equ 10 set input13=5
if %input13% equ 11 set input13=d
if %input13% equ 12 set input13=6
if %input13% equ 13 set input13=e
if %input13% equ 14 set input13=7
if %input13% equ 15 set input13=f
if %input13% equ 16 set input13=8
if %input13% equ 17 goto settings
goto settings 															::GOOD
:fontsize
cls
echo Right click the command prompt icon in the top left of the screen.
echo Then select properties. 
echo Once in there go in to the fonts tab and change to the size you would like
echo.
echo Press any key to continue...
pause >nul
goto settings															::GOOD
:begin
cls
set hp=100
set gold=0
set damage=1
set armor=10
goto naming															::GOOD
:naming
echo Hello...
echo.
echo What is your name?
echo.
set /p input1=Enter: 
goto home															::GOOD
:home
cls
echo Hello, %input1%!
echo -------------
echo Stats:
echo.
echo Health - %hp%			Gold - %gold%
echo Attack Damage - %damage%		Armor Class -  %armor%
echo Press letter and hit enter to continue...
set /p input9=
goto home2															::GOOD
:home2
cls
echo You wake up in your wooden house but your daughter isn't there. You decide to go looking for her. There's a door on your left and a bed on the right.
echo.
echo What would you like to do?
echo.
echo 1. Walk outside.
echo 2. Go to bed.
echo.
set /p input2=Enter: 
if %input2% lss 1 goto home2
if %input2% equ 1 goto outside
if %input2% equ 2 goto bed
if %input2% geq 3 goto home2															::GOOD
:bed
cls
echo You have slept for 5 hours
echo.
echo Would you like to go outside?
echo.
echo 1.No.
echo 2.Yes!
echo.
set /p input3=Enter: 
if %input3% lss 1 goto bed 
if %input3% equ 1 goto outside
if %input3% equ 2 goto bed2
if %input3% geq 3 goto bed															::GOOD
:bed2
cls
echo You have now slept for 6 hours
echo.
echo Would you like to go outside now??
echo.
echo 1. YES!
echo 2. No...
echo.
set /p input4=Enter: 
if %input4% lss 1 goto bed2
if %input4% equ 1 goto outside
if %input4% equ 2 goto bed3
if %input4% geq 3 goto bed2															::GOOD
:bed3
cls
echo You have slept for 10 hours
echo.
echo Would you like to go outside?
echo.
echo 1. YES!!
echo 2. No...
echo.
set /p input5=Enter: 
if %input5% lss 1 goto bed3
if %input5% equ 1 goto outside
if %input5% equ 2 goto force
if %input5% geq 3 goto bed3															::GOOD
:force
cls
echo You have slept long enough go outside.
echo.
echo Press any key to go outside...
pause >nul
goto outside															::GOOD
:outside
cls
echo You are now outside in front of your house, there are tree's on the left, on the right there is a path and straight on there is another path
echo.
echo What would you like to do?
echo.
echo 1. Goto the tree's.
echo 2. Goto the right path.
echo 3. Goto the path infront of you.
echo.
set /p input6=Enter: 
if %input6% lss 1 goto outside
if %input6% equ 1 goto trees
if %input6% equ 2 goto RPath
if %input6% equ 3 goto FPath
if %input6% geq 4 goto outside															::GOOD
:outside2
cls
echo You are now outside in front of your house, there are tree's on the left, on the right there is a path and straight on there is another path
echo.
echo What would you like to do?
echo.
echo 1. Goto the tree's.
echo 2. Goto the right path.
echo 3. Goto the path infront of you.
echo.
set /p input17=Enter: 
if %input17% lss 1 goto outside
if %input17% equ 1 goto trees3
if %input17% equ 2 goto RPath
if %input17% equ 3 goto FPath
if %input17% geq 4 goto outside															::GOOD
:trees
cls
echo You are infront of a forest, there is an axe on your right.
echo.
echo What would you like to do?
echo.
echo 1. Go get axe.
echo 2. Turn around.
echo 3. Punch tree.
echo.
set /p input7=Enter: 
if %input7% lss 1 goto trees 
if %input7% equ 1 goto axe
if %input7% equ 2 goto outside
if %input7% equ 3 goto punchtree
if %input7% geq 4 goto trees															::GOOD
:punchtree
cls
echo Punching the tree like the savage beast you are had no effect...
echo.
echo Press any key to stop punching this poor tree...
pause >nul
goto trees															::GOOD
:axe
cls
echo There is an axe in a tree stump in front you. 
echo.
echo What would you like to do?
echo.
echo 1. Grab axe.
echo 2. Turn back.
echo.
set /p input9=Enter: 
if %input9% lss 1 goto axe
if %input9% equ 1 goto trees2
if %input9% equ 2 goto trees
if %input9% geq 3 goto axe															::GOOD
:trees2
cls
echo You have acquired the axe and have gone back to the forest.
echo.
echo Would you like to...
echo.
echo 1. Cut trees.
echo 2. Go back to the house.
echo.
set /p input10=Enter: 
if %input10% lss 1 goto trees2
if %input10% equ 1 goto GetWood
if %input10% equ 2 goto outside
if %input10% geq 3 goto trees2															::GOOD
:GetWood
cls
echo You have cut down a tree but can not carry the logs back.
echo.
echo Press any key to back to the house...
pause >nul
goto trees3															::GOOD
:trees3
cls
echo There is a forest infront of you
echo.
echo What would you like to do?
echo.
echo 1. Cut trees.
echo 2. Turn around.
echo.
set /p input16=Enter: 
if %input16% lss 1 goto trees3
if %input16% equ 1 goto GetWood
if %input16% equ 2 goto outside2
if %input16% geq 3 goto trees3															::GOOD
:RPath
cls
echo While walking on the trail you come up on a bridge.
echo.
echo What would you like to do?
echo.
echo 1. Cross bridge.
echo 2. Go under the bridge.
echo 3. Turn around.
echo.
set /p input8=Enter: 
if %input8% lss 1 goto RPath
if %input8% equ 1 goto CBridge
if %input8% equ 2 goto underbridge
if %input8% equ 3 goto outside
if %input8% geq 4 goto RPath															::GOOD
:FPath
cls
echo You are surrounded by trees and the path has stopped.
echo.
echo What you like to do?
echo.
echo 1. Go into the forest.
echo 2. Turn back and head home.
echo 3. Sit there and wait.
echo.
set /p input15=Enter: 
if %input8% lss 1 goto FPath
if %input8% equ 1 goto intoforest
if %input8% equ 5 if %input9% equ 1 goto outside2
if %input8% equ 5 if %input9% neq 1 goto outside
if %input8% equ 3 goto sit
if %input8% geq 4 goto FPath															::GOOD
:underbridge
cls
echo You find a troll sleeping under the bridge.
echo.
echo What would you like to do?
echo.
echo 1. Run at it yelling!
echo 2. Sneek up to him.
echo 3. Run away!
echo.
set /p input14=Enter: 
if %input14% lss 1 goto underbridge
if %input14% equ 1 goto yelling
if %input14% equ 2 goto sneek
if %input14% equ 3 goto RPath
if %input14% geq 4 goto underbridge															::GOOD
:CBridge
cls
echo A troll has a apeared and is blocking your a path!
echo.
echo What would you like to do?
echo 1. Have a civilized conversation.
echo 2. Run at the troll yelling!
echo 3. Cry.
echo 4. Kill him.
echo 5. Run.
echo. 
set /p input15=Enter: 
if %input15% lss 1 goto CBridge
if %input15% equ 1 goto convotroll
if %input15% equ 2 goto yelling2 
if %input15% equ 3 goto cry													::DANK LINE OF CODE (NOT COKE)
if %input15% equ 4 if %input9% equ 1 goto kill1
if %input15% equ 4 if %input9% neq 1 goto kill2
if %input15% equ 5 if %input9% equ 1 goto outside2
if %input15% equ 5 if %input9% neq 1 goto outside
if %input15% geq 6 goto CBridge															::GOOD
:convotroll
cls
echo What would you like to say?
echo.
echo 1. Hey!
echo 2. Hi!
echo 3. How are you?
echo 4. I'm insecure.
echo 5. Please dont bash my skull in with a rock...
echo.
set /p input17=Enter: 
if %input17% lss 1 goto convotroll
if %input17% equ 1 goto convotroll_hey
if %input17% equ 2 goto convotroll_hi
if %input17% equ 3 goto convotroll_haw
if %input17% equ 4 goto convotroll_insecure
if %input17% equ 5 goto convotroll_plz
if %input17% geq 6 goto convotroll															::GOOD
:convotroll_hey
cls
echo Upon saying Hey! The troll has bashed your head in with a rock.
echo.
echo Press any key to exit...
pause >nul
exit															::GOOD
:convotroll_hi
cls
echo Upon saying Hi! The troll has bashed your head in with a rock.
echo.
echo Press any key to exit...
pause >nul
exit															::GOOD
:convotroll_haw
cls
echo Upon saying How are you doing? The troll has bashed your head in with a rock.
echo.
echo Press any key to exit...
pause >nul
exit															::GOOD
:convotroll_insecure
cls
echo Upon announcing that you are insecure. The troll laughed and has bashed your head in with a rock.
echo.
echo Press any key to exit...
pause >nul
exit															::GOOD
:convotroll_plz
cls
echo Upon asking politely to not be bashed by a rock... The troll decides to let you pass. But then bashes you with a tree..
echo.
echo Press any key to exit...
pause >nul
exit															::GOOD
:yelling2
cls
echo You run yelling towards the troll, but you have your eyes closed and run into the trolls stomach. You stumble to the ground upon hitting the brick wall like creature. The troll steps on you and crushes you.
echo.
echo Press any key to exit...
pause >nul
exit															::GOOD
:cry
cls
echo You crawl into a ball and cry... The troll looks at you for a second and then he sits on you.
echo.
echo Press any key to exit...
pause >nul
exit															::GOOD
:kill1
cls
echo You run up to the troll with your axe and cut his stomach open and his guts fallout and the troll fell to the ground
echo. 
set hp=85
echo But in doing so you have lost 15 points of health. You now %hp% points of health
echo.
echo Press any key to continue with your journey...
pause >nul
goto journey1															::GOOD
:kill2
cls
echo With what?
echo.
echo 1. Fist.
echo 2. Mind.
echo 3. Run away!
echo.
set /p input18=Enter: 
if %input18% lss 1 goto kill2
if %input18% equ 1 goto fistdeath
if %input18% equ 2 goto minddeath
if %input18% equ 3 goto outside
if %input18% geq 4 goto kill2															::GOOD
:fistdeath
cls
echo The troll punches you back thinking it's a game of shot for shot, when he hits you, you go flying into a tree and die on impact.
echo.
echo Press any key to exit...
pause >nul
exit															::GOOD
:minddeath
cls
echo The troll realizes you are trying to explode his head by thinking and he headbuts you into the ground.
echo.
echo Press any key to exit...
pause >nul
exit															::GOOD
:journey1
exit
:yelling
cls
echo You yell at the troll to wake up. When he does he walks over to you and yells at you then throws you into a wall effectively killing you.
echo.
echo Press any key to exit...
pause >nul
exit															::GOOD
:sneek
cls
echo You sneek over to the troll
echo.
echo What would you like to do?
echo.
echo 1. Kill Him.
echo 2. Hug him.
echo 3. Sleep with him.
echo 4. Leave.
echo.
set /p input19=Enter: 
if %input19% lss 1 goto sneek
if %input19% equ 1 goto killsneek
if %input19% equ 2 goto hugtroll
if %input19% equ 3 goto sleeptroll
if %input19% equ 4 goto RPath
if %input19% geq 5 goto sneek															::GOOD
:killsneek
cls
echo How would you like to kill him?
echo.
echo 1. With my axe.
echo 2. Choke him.
echo 3. Stomp on his throat.
echo 4. Nevermind.
echo.
set /p input20=Enter: 
if %input20% lss 1 goto killsneek
if %input20% equ 1 if %input9% equ 1 goto w/myaxe1
if %input20% equ 1 if %input9% neq 1 goto w/myaxe2
if %input20% equ 2 goto chokeout
if %input20% equ 3 goto stomponthroat
if %input20% equ 4 goto RPath
if %input20% geq 5 goto killsneek															::GOOD
:killsneek2
echo.
echo What would you like to do?
echo.
echo 1. With my axe.
echo 2. Choke him.
echo 3. Stomp on his throat.
echo 4. Nevermind.
echo.
set /p input23=Enter: 
if %input23% lss 1 goto killsneek2
if %input23% equ 1 goto w/myaxe2
if %input23% equ 2 goto chokeout
if %input23% equ 3 goto stomponthroat
if %input23% equ 4 goto Rpath
if %input23% geq 5 goto killsneek2
:w/myaxe1
cls
echo You have killed the troll without taking any damage.
echo.
echo What would you like to do?
echo.
echo 1. Look around.
echo 2. Leave.
echo.
set /p input21=Enter: 
if %input21% lss 1 goto w/myaxe1
if %input21% equ 1 goto lookaroundunder
if %input21% equ 2 goto journey1
if %input21% geq 3 goto w/myaxe1
if %input21% geq a goto w/myaxe1															::GOOD
:lookaroundunder
cls
echo You look around under the and find a few bones, a chest thats locked and a skeleton.
echo.
echo What would you like to do?
echo.
echo 1. Try to pry open chest.
echo 2. Search Skeleton.
echo 3. Grab bones.
echo 4. Leave.
echo.
set /p input22=Enter: 
if %input22% lss 1 goto lookaroundunder
if %input22% equ 1 goto pryopenchest
if %input22% equ 2 goto searchskeleton
if %input22% equ 3 goto grabbones
if %input22% equ 4 goto journey1
if %input22% geq 5 goto lookaroundunder															::GOOD
:pryopenchest
cls
echo You attempt to pry open the chest but it doesn't seem to want to budge.
echo.
echo What would you like to do?
echo.
echo 1. Try again
echo 2. Stop trying
echo.
set /p input24=Enter: 
if %input24% lss 1 goto pryopenchest
if %input24% equ 1 goto pryopenchest2
if %input24% equ 2 goto lookaroundunder
if %input24% geq 3 goto pryopenchest
:pryopenchest2
cls
echo You try again put it continues not to budge
echo.
echo Press any key to continue...
pause >nul
goto pryopenchest3
:pryopenchest3
cls
echo What would you like to do?
echo.
echo 1. Try again.
echo 2. Stop trying.
echo.
set /p input25=Enter: 
if %input25% lss 1 goto pryopenchest3
if %input25% equ 1 goto pryopenchest2
if %input25% equ 2 goto lookaroundunder
if %input25% geq 3 goto pryopenchest3
:searchskeleton
cls
echo You search the skeleton and find some bone meal, a rat and a set of keys.
echo.
echo What would you like to do?
echo.
echo 1. Grab bone meal.
echo 2. Grab the rat.
echo 3. Grab the keys.
echo 4. Nevermind.
echo.
set /p input26=Enter: 
if %input26% lss 1 goto searchskeleton
if %input26% equ 1 goto bonemeal
if %input26% equ 2 goto rat
if %input26% equ 3 goto keys
if %input26% equ 4 goto lookaroundunder
if %input26% geq 5 goto searchskeleton
:grabbones
cls
echo You have picked up the bones to realize they have no point in this game and you threw them away.
echo.
echo Press any key to continue...
pause >nul
goto lookaroundunder
:bonemeal
cls
echo You have picked the bone meal.
echo.
echo What would you like to do?
echo.
echo 1. Eat it!
echo 2. Throw it away because im a puss.
echo.
set /p input27=Enter: 
if %input27% lss 1 goto bonemeal
if %input27% equ 1 goto eatbonemeal
if %input27% equ 2 goto searchskeleton
if %input27% geq 3 goto bonemeal
:eatbonemeal
cls
echo You eat the bone meal and upon realizing that it taste like troll shit you puke it out.
echo.
echo I can't believe you'd eat that.
echo.
echo Press any key to continue...
pause >nul
goto searchskeleton
:rat
cls
echo You grab the rat but it finds its way out of your grip then climbs up your arm and scratchs your face.
set /a "hp=%hp%-4"
if %hp% leq 0 goto end
echo.
echo You lose 4 points of health, you now have %hp% health points left
echo.
echo Press any key to continue...
pause >nul
goto searchskeleton
:keys
cls
echo 
echo.
echo What would you like to do?
echo.
echo 1. 
echo 2. 
echo 3.  
echo.
set /p input=Enter: 
if
if
if
if
if
:w/myaxe2
cls
echo What axe?
goto killsneek2															::GOOD
:chokeout
cls
echo You start to choke him. 
set hp=95
echo.
echo He wakes up and struggles a bit and you lose 5 health points. You now have %hp% points of health left
echo.
echo Press any key to continue...
pause >nul
goto lookaroundunder															::GOOD
:stomponthroat
cls
echo You sneak up to him and stomp on his throat, but it's not hard enough and the troll wakes up and kills you
echo.
echo Press any key to exit...
pause >nul
exit
:hugtroll
cls
echo You sneak up to the troll and hug him, but the troll wakes up and notices you so he hugs you so much that it squeezes the life right out of you
echo.
echo Press any key to exit...
pause >nul
exit 															::GOOD
:sleeptroll
cls
echo You sneak up to the troll and fall asleep beside him, but you never wake up.
echo.
echo Press any key to exit...
pause >nul
exit															::GOOD
:intoforest
cls
echo 
echo.
echo What would you like to do?
echo.
echo 1. 
echo 2. 
echo 3.  
echo.
set /p input=Enter: 
if
if
if
if
if
:sit
cls
echo 
echo.
echo What would you like to do?
echo.
echo 1. 
echo 2. 
echo 3.  
echo.
set /p input=Enter: 
if
if
if
if
if
:end
cls
echo You have died...
echo.
echo Why don't you give it another shot?
echo.
echo Press any key to exit...
pause >nul
exit