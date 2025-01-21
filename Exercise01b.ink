/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> Forest_path

== Forest_path ==
You are standing in the middle of a forest. {Lanturn: Your holding the Lantern in one hand. |There is a lantern on the ground.} You do not know how you got here but there is a path in front of you leading north.
+[Go north] -> Path_Divide
*[Turn around] -> Blocked_path
*[Pick up Lanturn] -> Lanturn


== Lanturn ==
You now have a Lanturn. 
*[Go Back] -> Forest_path

== Blocked_path ==
The there is no path behind you, only foliage that blocks your path
*[Go back] -> Forest_path

== Path_Divide ==
You go north down the path. It is very dark, you can barly see the path. You can't go forward like this. 
*{Lanturn}[Light Lanturn] -> Lit_Path_Divide
+[Go Back] -> Forest_path

== Lit_Path_Divide ==
With the path now lit up you can see there is a divide in the path, one path leads Northeast, the other leads Northwest. Which way do you go?
+[Go Northeast] -> Lakeside_path
+[Go Northwest] -> Abandoned_house

== Lakeside_path ==
You head down the northeast path and come across a small lake. While the path end's here, you see something glimmer in the light of your lanturn on the lakeshore. 
* [Investigate] -> Key
+ [Go back] -> Lit_Path_Divide

== Key == 
You find a golden key. This may prove useful later.
*[Go back] -> Lit_Path_Divide

== Abandoned_house == 
You travel down the Northwest path and come across a old house.
+[Investigate door] ->Old_door
+[Go back] -> Lit_Path_Divide

== Old_door == 
You find the door locked. 
*{Key}[Unlock door] -> Inside_House
+[Go back] -> Abandoned_house

== Inside_House ==
Looking through the house, you don't find much inside. Not until you find a closed door at the end of the hall.
*[Open Door] -> Old_Room

== Old_Room ==
Opening the door, you find you old childhood bedroom. Looking at your old possession, you find yourself reminiscing on old memories. Until, you come across a piece of paper on the dresser. A death certificate. More specifically, your death certificate. You remember now, you died a long time ago. You were now just a ghost of who you once were. 
-> END



