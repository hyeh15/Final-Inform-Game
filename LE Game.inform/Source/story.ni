"Game" by Harrison Yeh

[Paste everything below this into new story]

Rivet City is a room. The description is "A busling lively city, full with a market place, bar and hotel.. But remember your task, finding Pinkerton won't be so easy."

Market Place is scenery. The description is "A market place with an ammunitions shop, an attire shop and a resturant."

Ammunitions shop is scenery. The description is "Ammo and guns everywhere, too bad I'm broke."

Understand "gun store", "ammo shop", "gun place", "Ammunition Shop", "Shrapnel" as Ammunitions shop.

Attire Shop is scenery. The description is "A store called Patomic Attire, selling some standard goods."

Understand "clothing store", "clothes store", "Attire store" as Attire shop.

Resturant is scenery. The description is "A small little diner with food. Unfortunately I'm not hungry."

Understand "Diner", "food store", "Cafeteria", "snackbar" as Resturant.

[Health System]

A person has a number called maximum hit points. A person has a number called current hit points.

The maximum hit points of the player is 100.

The current hit points of the player is 100.



Definition: A person is dead if his current hit points are less than 0.

An every turn rule:
	If the player is dead:
		end the game saying "Game Over".
	
[Combat System]
	
A weapon is a kind of thing. A weapon has a number called maximum damage. The maximum damage of a weapon is usually 20.
		
Attacking it with is an action applying to one visible thing and one carried thing. Understand "attack [someone] with [something preferably held]" as attacking it with.

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

Your Combat Shotgun is in the Desk. "You'll be needing that."

Understand "Combat Shotgun" or "Gun" as your Combat Shotgun.

Your Combat Shotgun is a weapon. The maximum damage of the Your Combat Shotgun is 120.

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

Joe is a person in Rivet City. "Your friend Joe says 'Hey! I heard there was a secret room in the city. Try looking around. I heard it's really old and no one has ever been there before.'"

An every turn rule:
	If the player is in Rivet City:
		Instead of examining Joe: 
			Say "Joe looks at you and says, 'You need a key to get toeh bow!.'"
			
The maximum hit points of Joe is 50.

The current hit points of Joe is 50.

Instead of attacking Joe:
	Say "Don't want to attack your best friend."
	

[This section for each new character]

Security Guard is a person in Rivet City. "There's a security guard dressed in black armor armed with a standard 10 mm SMG."
			
The maximum hit points of Security Guard is 60.

The current hit points of Security Guard is 60.

Instead of attacking Joe:
	Say "Don't want to attack a guard."
	

Old Closet is a room. It is north of Rivet City. The description of Old Closet is "A old closet with a desk."

Desk is scenery. It is in the Old Closet. The description is "There seems to be some keys on top of it. Better take it."

Understand "table" as desk.

Needles, Sword, Health Potion, Stimpak, and Lock Pick are on the Desk. Sword is a Weapon. The Maximum Damage of Sword is 75. Lock Pick is a thing. Bacon Strips is a weapon. The maximum damage of Bacon Strips is -200. Health Potion is a Weapon. The maximum damage of Health Potion is -200. 

The exit is a door. The door is locked. The door is closed and openable. The door called exit is west of Rivet City. Understand "door" as the exit.

Entrance to bow is a room. It is east of Rivet City. 

understand the command "use" as something new. understand "use [things]" as using. using is an action applying to one thing.


[Combinations]

Understand "combine [something] with [something]" as combining it with. Combining it with is an action applying to two carried things. 

Understand the command "attach" as something new. Understand "attach [something] to [something]" as combining it with. Understand the command "connect" as "combine".	

The combining it with action has an object called the item built.

Setting action variables for combining something with something: 
	let X be a list of objects; 
	add the noun to X; 
	add the second noun to X; 
	sort X; 
	repeat through the Table of Outcome Objects: 
		let Y be the component list entry; 
		sort Y; 
		if X is Y: 
			now the item built is the result entry.
Check combining it with: 
	if the item built is nothing, 
		say "You can't combine [the noun] and [the second noun] into anything useful." instead.
Carry out combining it with: 
	move the item built to the holder of the noun; 
Report combining it with: 
	say "You now have [an item built]!".

	
Table of Outcome Objects
component list			result   
{Sword, needles}			Ripper

Ripper is a weapon. The maximum damage of Ripper is 130. 





	

	
