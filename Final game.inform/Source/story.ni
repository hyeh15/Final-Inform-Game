"FIND THE SCIENTIST" by Harrison Yeh

The description of player is "I'm so cool. My sheriff's hat could attract any respectable lady."

When Play begins:
	Say "You're in Rivet City, the city made in an old aircraft carrier. Pretty good place after the nuclear holocaust. The goal is to find a scientist known as Pinkerton who has barricaded himself in the lower half of the ship. He knows the history of this city and you're job is to find out more about it. In order to get to him you're going to have to go through the bow. There seems to be a mysterious old door to the south, better check that out first."

Understand "[any room]" as going by name. Understand "go to [any room]" as going by name.
Going by name is an action applying to one thing.

Rule for deciding whether all includes something: it does not.

Rule for printing a parser error when the latest parser error is the nothing to do error:
   say "Hey stop that! All is disabled." instead

[Makana gave me this]

Check going by name: 
    if the noun is the location, say "You're already in [the location]." instead; 
    if the noun is not adjacent and the noun is unvisited, say "The noun you said doesn't make any sense" instead.

[healing items]

[Salve count was taken from assassin]

The Stimpak is an object. The printed name is "Stimpak x [salve-count]". The Stimpak has a number called salve-count. The salve-count of the Stimpak is usually 1. It is on the Night Stand. the description is "I can [bold type]use[roman type] this to heal my wounds."

understand "use" as eating.

Instead of eating the Stimpak:
	increase the current hit points of the player by 50;
	say "Your health has increased![line break](Health: [the current hit points of the player])";
	Remove stimpak from play
	
[Rooms and Scenery]

Cabinet is scenery. It is in Rivet City Entrance. It is openable. It is closed. It is not locked. It is not portable.

Bottlecaps is a thing. It is in Cabinet. The description is "Some loose change… might come in handy."

Understand "talk to [person]" as examining.

Understand "speak to [person]" as examining. 

Rivet City Entrance is a room. The description is "A busling lively city, full with a market place to the east, bar and hotel.. But remember your task, finding Pinkerton won't be so easy. There's a cabinet here."

Market Place is room. It is east of Rivet City. The description is "A market place with an ammunitions shop, an attire shop and a resturant. There seems to be a hotel to the north…."

Ammunitions shop is scenery. It is in Market Place. The description is "Ammo and guns everywhere, too bad I'm broke."

Understand "gun store", "ammo shop", "gun place", "Ammunition Shop", "Shrapnel" as Ammunitions shop.

Attire Shop is scenery. It is in Market Place. The description is "A store called Patomic Attire, selling some standard goods."

Understand "clothing store", "clothes store", "Attire store" as Attire shop.

Resturant is scenery. It is in Market Place. The description is "A small little diner with food. Unfortunately I'm not hungry."

Understand "Diner", "food store", "Cafeteria", "snackbar" as Resturant.

Old Closet is a room. It is north of Rivet City. The description of Old Closet is "A old closet with a rusty stand and some keys."

Hallway is a room. It is north of Market Place. "A hallway, there's the hotel to the north, a laboratory to the west, and a bar to east."

Bar is a room. It is east of Hallway. "The muddy ruter. Not the best name for a bar… But there seems to be a few people here."

Bartender is a person in Bar. 
	
Instead of examining Bartender:
	if the player is not carrying the Bottlecaps:
		Say "You explain your task to the bartender, to which she replies 'Sorry, I just work here. But maybe if you had some caps… I might be willing to remember a bit better.'" instead;
	if the player is carrying the Bottlecaps:
		say "You exchange a few caps with the bartender. Being happy with the extra cash, he says 'I don't know much, but I do know that there is an old closet north of the Rivet City entrance where they stashed Pinkerton's old junk. I also heard about a stash in the hotel. Maybe the two are connected.'" instead;
		

Purification Lab is a room. It is west of Lab Door. "Wow! This a huge lab!"

Doctor Lee is a person in Purification Lab. "'Hey! This is an authorized area! What are you doing here? Wait… You look just like your father. I didn't know you would come here. He said you were going to stay in the vault. But anyways, what do you need?' You explain your current mission to her. She says that in honor of your father, you can take whatever you need."

Doctor Gordon is a person in Purification Lab. "'I remember Pinkerton. He ran off when Doctor Lee came. I wonder why.'"

Understand "xyzzy" or "say xyzzy" or "cast xyzzy" as casting xyzzy.

Casting xyzzy is an action applying to nothing.

Check casting xyzzy:
	Say "Do you even lift?" instead;

Lab Table is scenery. It is in Lab. "There's a fission battery here. Just what he wanted! But…. there's also a mesmetron here… If I use this on Pinkerton I know he'll tell me the truth and he'll be my personal slave forever and I can keep the Fission Battery for myself."

Understand "laboratory table" as Lab Table.

Mesmetron is a thing. It is on the Lab table. It is portable. The description is "A powerful mind controlling device. Anyone under the effects of this will be obedient to whatever you say."

An every turn rule:
	If player has Fission Battery:
		Remove Mesmetron from play.
		
An every turn rule:
	If player has Mesmetron:
		Remove Fission Battery from play.

Fission Battery is a thing. It is on the lab table. The description is "A large battery. It's exactly what Pinkerton wanted."

A door called Lab door is west of Hallway and east of Purification Lab. It is locked. It is closed and openable. 

Hotel is a room. It is north of Hallway. "There seems to be an old caretaker and a robbot butler named 'Mr Gusty'. There also appears to be an old hotel room to the east."

Guest is a person in Hotel. Instead of examining guest:
	Say "'Pinkerton? I haven't heard that name for a long time. My guess is that he's in the lower bow.'"

Caretaker is a person in the Hotel. "The lady Seems senile… Talking to her won't do any good."

Mr Gusty is a person in the hotel. "The robot says 'How may I help you sir?' but doesn't seem to know anything."

Mysterious Hotel Room is a room. It is east of hotel. "This room is the only unlocked room in the hotel… There's a lot of weird things here." 

Night Stand is scenery. It is in Mysterious Hotel Room. "An average night stand. Nothing in it."

The Counter is scenery. It is in the hotel. 

Shades is a thing. It is wearable. It is on the NIght Stand. The description is "These shades are pretty cool! They appear to have belonged to a store called 'Lucky's'"

Rusty Stand is scenery. It is in Old Closet. The description is "A really rusty stand. I'm surprised it's still standing! But there appears to be some keys on it."

Keys is on the Rusty stand. The Keys unlocks the exit. The description is "Keys to the bow."

Understand "key" as Keys.

The exit is a door. The door is locked. The door is closed and openable. The exit is south of Rivet City and north of Entrance to Bow. The description is "The exit leads to the bow, I bet Pinkerton is down there."

Understand "door" as the exit. 

Entrance to bow is a room. The description is "Well no place to go but down!"

Lower Bow is a room. It is south of Entrance to bow. The description is "There appears to be an old armory here to the left. Better go through the stuff just in case but I'm not expecting any laser tech. There's also a stairway to the Engine Room."

Armory is a room. It is west of Bow. The description is "Well, might as well take this old gun."

An every turn rule:
	If the Combat Shotgun is not in the armory and Player is in the armory:
		change the description of the armory to "You already took the gun."

Desk is scenery. It is in the armory.

Engine is a room. It is south of Lower Bow. "Mutated hostile creatures are wandering around. Hopefully if I kill enough of them the key will drop. I better take all the loot after killing one. There also seems to be radiation here. Better work fast and pay attention to my health."

Corridor is a door. It is south of engine. It is locked. 

Ancient key is a thing. It unlocks the Corridor. The description is "This old key seems to unlock the door to the next room!"

Understand "Ancient Keys" as ancient key.

An every turn rule:
	if the Mirelurk is dead:
		move Ancient Key to Engine.
	
[bomb kit and mines implemented with help from Ms Kiang]
	
Bomb kit is a thing. It is portable. It is on Night Stand. 

A mine is a thing. It is in the stairwell. A thing can be armed or disarmed. Mine is not portable. Mine is armed.

Understand "disarm [something]" as disarming it. Disarming it is an action applying to one thing. 

Understand "disarming [something]" as disarming it. 

Check Disarming it: 
	If the noun is not the mine:
		Say "You can't disarm that".
		
Instead of going south when player is in stairwell: 
	If mine is armed:
		Say "There's a mine in the way, better disarm it."
		
Instead of going south when player is in stairwell:
	If player does not have bomb kit:
		Say "wait, there's a mine. But I lack the tools to disarm it. I bet Rivet City has a place that has these."
		
		  

Stairwell is a room. It is south of corridor. "I think this is the way to the lab…"
	
Laboratory is a room. It is east of Stairwell. "Pinkerton's lab is a huge pile of filth…. But at least Pinkerton is here."

Work Bench is scenery. It is in Laboratory. "There's a bunch of gismos on his bench. Better not touch it."

Old Lab keys is a thing. It unlocks Lab Door. The description is "This is the old key pinkerton had. It seems functional and it's meant to unlock the Lab Door."

[This section for each new character]

The current hit points of Pinkerton is 10.

After going to Laboratory, Change description of Pinkerton to "Did you get what I wanted?"

Pinkerton is a person in Laboratory. "'Hey!' says Pinkerton as you barge in. 'Why are you here? Don't you know a thing or two about privacy? Well, I guess if you got through those traps and those mirelurks you can't be all bad. And it doesn't seem like you want to kill me. SO, what do YOU want?"

Understand "Pinker", "Scientist" as Pinkerton.


[This is sort of complex since it provides 3 different scenarios. I didn't have to look at any guide but I did have to play with it a little.]
Instead of examining Pinkerton:
	if the player is not carrying the mesmetron:
		Say "You explain your mission to Pinkerton. He says 'Alright, I will help you with your quest. But, you must give me something in return. I need a fisson battery. My hobby here is tinkering with androids and it seems I'm out. You get that for me and I'll tell you the history of this town. I'm sure the Rivet City lab has some. There's a key to their lab on my work bench.'" instead;
	if the player is carrying the mesmetron:
		say "You use the memetron on Pinkerton. It backfires, and he is killed. You search through his things and you find a holotape with the info." instead;
		End the game in victory;
		if the player is carrying the Fission Battery:
			Say "You give him the battery and he says he was once on the council but they kicked him out when a new person named Doctor Lee came into the equation. They kicked him off the science council and exiled him from the city. Quest Complete!";
			End the game in victory.
		
	
		
		


[Health System]

A person has a number called maximum hit points. A person has a number called current hit points.

The maximum hit points of the player is 100.

The current hit points of the player is 100.

Definition: A person is dead if his current hit points are less than 0.

An every turn rule:
	If the player is dead:
		end the game saying "Game Over. You have no health left...".

An every turn rule:
	If the player is in Engine:
		Decrease the current hit points of the player by 5.

[Combat System with help from ryan]
	
A weapon is a kind of thing. A weapon has a number called maximum damage. The maximum damage of a weapon is usually 20.
		
Attacking it with is an action applying to one visible thing and one carried thing. Understand "attack [someone] with [something preferably held]" as attacking it with.

Instead of attacking the mirelurk:
	say "What do I attack the mirelurk with?"
	
Instead of attacking the Super Mutant:
	say "What do I attack the Super Mutant with?"
	
Instead of attacking the Mutated Crab:
	say "What do I attack the Mutated Crab with?"

The attacking it with action has a number called damage inflicted.

Setting action variables for attacking something with something:
	If the second noun is a weapon:
		let the maximum attack be the maximum damage of the second noun;
		now the damage inflicted is a random number between the maximum attack and 0.
		
Check an actor attacking something with something (this is the can't attack with something that isn't a weapon rule): 
	if the second noun is not a weapon: 
		if the actor is the player, say "[The second noun] does not qualify as a weapon.";
		stop the action.
		
Check an actor attacking something with something (this is the can't attack a non-person rule): 
	if the noun is not a person: 
		if the actor is the player, say "[The noun] is not a person, and therefore can't be attacked."; 
		stop the action.
		
Carry out an actor attacking something with something (this is the standard attacking it with a weapon rule): 
	decrease the current hit points of the noun by the damage inflicted; 
	if the noun is dead:
		remove the noun from play.

Understand "shoot [someone] with [something preferably held]" or "kill [someone] with [something preferably held]" or "murder [someone] with [something preferably held]" or "hit [someone] with [something preferably held]" or "heal [someone] with [something preferably held]" or "whack [someone] with [something preferably held]" or "slap [someone] with [something preferably held]" or "punch [someone] with [something preferably held]" as attacking it with.

Your Combat Shotgun is in the Desk. "An old fashioned shotgun. Better than nothing."

Understand "Shotgun" or "Gun" as your Combat Shotgun.

Your Combat Shotgun is a weapon. The maximum damage of the Your Combat Shotgun is 90.

Instead of going nowhere, say "There is nothing in that direction."

Report attacking a dead person with something (this is the death-report priority rule): 
	say "You attack with [the second noun], killing [the noun]!" instead.
	
Report attacking someone with something (this is the normal attacking report rule): 
	say "You attack [the noun] with [the second noun], causing [damage inflicted] point[s] of damage!" instead.
	
Report someone attacking the player with something when the player is dead (this is the player's-death priority rule): 
	say "[The actor] attacks you with [the second noun], finishing you off!"; 
    	end the story; 
    	stop the action

Report someone attacking the player with something (this is the standard report someone attacking the player with rule): 
	say "[The actor] attacks you with [the second noun], causing [damage inflicted] point[s] of damage!" instead.
	
Report someone attacking something with something (this is the standard report attacking it with rule): 
	say "[The actor] attacks [the noun] with [the second noun], causing [damage inflicted] point[s] of damage!" instead.
		
[This section for each new character]

Greeter is a person in Rivet City. "A greeter sits by the entrance of rivet city."

Understand "secretary", "Entrance Person" as Greeter.


An every turn rule:
	If the player is in Rivet City:
		Instead of examining Greeter: 
			Say "You explain your mission to the greeter. He is happy to help you and says 'You need a key to get to the bow. But no one has been there in a long time. MIght want to go to the bar and ask around there.'"
			
The maximum hit points of Greeter is 50.

The current hit points of Greeter is 50.

Instead of attacking Greeter:
	Say "Don't need to attack him."
	
[This section for each new character]

Caretaker is a person in Hotel.
			
The maximum hit points of Caretaker is 60.

The current hit points of Caretaker is 60.

Understand "Manager" as Caretaker.

[This section for each new character]

Security Guard is a person in Rivet City. "A security guard stands by the door."
			
The maximum hit points of Security Guard is 60.

The current hit points of Security Guard is 60.

Instead of examining Security Guard:
	Say "'Huh? Pinkerton? That old coot hasn't been seen around here for years. Anyways there's tons of people you could ask. I would start with the Bar.'"

Understand "guard", "soldier", "militant" as Security Guard.

Instead of attacking Security Guard:
	Say "Don't want to attack a guard."
	

[Character]

The maximum hit points of Mirelurk is 50.

The current hit points of Mirelurk is 50.

When play begins: 
	now the left hand status line is "You: [current hit points of player]"; 
	now the right hand status line is "Mirelurk: [current hit points of Mirelurk]".
	
Every turn (this is the Mirelurk-attack rule): 
	if Mirelurk is not dead:
		if the current hit points of Mirelurk is less than 50, try Mirelurk attacking the player with a random weapon which is carried by Mirelurk.
		
	
Mirelurk is a person in Engine. Mirelurk carries a weapon called Claws. The Maximum Damage of Claws is 15. Mirelurk carries a weapon called Screech. The Maximum Damage of Screech is 20. Mirelurk carries a weapon called Nothing. The Maximum Damage of Nothing is 0.



[Character]

The maximum hit points of Mutated Crab is 50.

The current hit points of Mutated Crab is 50.

When play begins: 
	now the left hand status line is "You: [current hit points of player]"; 
	now the right hand status line is "Mutated Crab: [current hit points of Mirelurk]".
	
Every turn (this is the Mutated Crab-attack rule): 
	if Mirelurk is not dead:
		if the current hit points of Mutated Crab is less than 50, try Mutated Crab attacking the player with a random weapon which is carried by Mutated Crab.
		
	
Mutated Crab is a person in Engine. Mutated Crab carries a weapon called Pinchers. The Maximum Damage of Pinchers is 20.

[Character]

The maximum hit points of Super Mutant is 50.

The current hit points of Super Mutant is 50.

When play begins: 
	now the left hand status line is "You: [current hit points of player]"; 
	now the right hand status line is "Super Mutant: [current hit points of Mirelurk]".
	
Every turn (this is the Super Mutant-attack rule): 
	if Super Mutant is not dead:
		if the current hit points of Super Mutant is less than 50, try Super Mutant attacking the player with a random weapon which is carried by Super Mutant.
		
	
Super Mutant is a person in Engine. Super Mutant carries a weapon called Assault Rifle. The Maximum Damage of Assault Rifle is 20.

