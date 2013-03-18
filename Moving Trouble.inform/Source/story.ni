"Inform Final Project" by Nolan Chung
		
Understand "xyzzy" or "say xyzzy" or "cast xyzzy" as casting xyzzy.
Casting xyzzy is an action applying to nothing.
Check casting xyzzy:
	say "Insert Easter Egg here"

Include Secret Doors by Andrew Owen.

Understand "talk to [someone]" as Talking To. Talking To is an action applying to one thing.

Other Dimension is an open container.
Real World is an open container.  
You is a thing in Real World.
After going through mirror:
	If you is in other dimension:
		now you is in real world;
	Otherwise:
		now you is in other dimension.
[After going through mirror:
	If You is in Other Dimension:
		now You is in Real World;
	Otherwise:
		continue the action.]

Instead of taking Clock:
	if EnteredDimension is in Other Dimension:
		continue the action;
	otherwise:
		say "You don't need that right now."
Instead of taking Calender:
	if EnteredDimension is in Other Dimension:
		continue the action;
	otherwise:
		say "You don't need that right now."
Instead of taking Mail:
	if EnteredDimension is in Other Dimension:
		continue the action;
	otherwise:
		say "You don't need that right now.";
Instead of taking Root Beer:
	if EnteredDimension is in Other Dimension:
		continue the action;
	otherwise:
		say "You don't need that right now.";
Instead of taking pineapple juice1:
	if EnteredDimension is in Other Dimension:
		continue the action;
	otherwise:
		say "You don't need that right now.";

The Description of player is "[if player is wearing Dirty Shirt] You are wearing a dirty shirt.[end if] [if player is wearing Dirty Pants] You are wearing dirty pants.[end if] [if player is wearing Clean Shirt] You are wearing a clean shirt.[end if] [if player is wearing clean pants] You are wearing clean pants.[end if]"

Elle is a woman. The description is "Your girlfriend Elle. She's kind of crazy but you love her. [if Elle is on couch1] Elle is relaxing on your couch.[end if] [if Elle has root beer1] Elle is happily enjoying her root beer[end if]".
Elle1 is a woman. The printed name is "Elle". Understand "Elle" as Elle1. The description is "Your girlfriend Elle. She's kind of crazy but you love her.[if Elle has pineapple juice] Elle is happily drinking her root beer[end if] [if escape is in other dimension] Elle is holding a kitchen knife and glaring at you with a scary expression."

When play begins:
	now the player is in bed;
	now Player is wearing Dirty Shirt;
	now the Player is wearing Dirty Pants;
	say "You arrived at your new house a couple of hours ago but instantly crashed on your new bed. You just woke up from your nap and realized it's already 5:00 pm. Your girlfriend Elle was going to come over to see the new place. You'd better start actually looking around now. It's a little run down but hey, what did you expect from craigslist. Too bad you can't afford a nicer place yet."

After getting off bed for first time:
	say "You'd better get into some clean clothes before Elle gets here."

Dirty Shirt is a wearable thing. [make it so you can't wear both shirts and pants at same time]The description is "An old polo shirt that you've been wearing for over a day. It doesn't smell too good."
Dirty Pants is a wearable thing. The description is "Jeans last forever, right? It's okay if you haven't washed these in the last two weeks, right?"
Instead of putting on Clean Shirt:
	if player is wearing Dirty Shirt:
		say "Putting on a clean shirt over the dirty one will only give you two dirty shirts. That's 200% more things to wash.";
	otherwise:
		say "You pull on the clean shirt. Ahh, smells so much better than the dirty one.";
		continue the action.
Instead of putting on Clean Pants:
	if player is wearing Dirty Pants:
		say "It's kind of hard to pull a pair of jeans over another pair of jeans.";
	otherwise:
		say "Ah, pants that have been washed recently. That's a good feeling.";
		continue the action.

Bedroom is a room. It is west of the Living Room. The description is "The Living Room is east."
Bed is enterable supporter in the bedroom. It is fixed in place. The description is "Just a cheap mattress. You don't have money to spare buying some fancy sleep number bed or whatever it is."
Mattress is scenery in Bedroom. The description is "A cheap mattress that you got from Sears."
Instead of taking mattress:
	say "That's too heavy to pick up and lug around for fun."
Understand "get into [something]" as climbing. 
Understand "get out of [something]" as getting off. [game looks round room everytime you get out of bed]
Dresser is an closed openable container in bedroom. Understand "drawer" as Dresser. The description is "A small dresser in your bedroom. It has one drawer."
Instead of opening Dresser:
	If player is wearing Dirty Shirt:
		say "You haven't unpacked your things yet. Your clothes must be in your suitcase somewhere.";
	else if player is wearing Dirty Pants:
		say "You haven't unpacked your things yet. Your clothes must be in your suitcase somewhere.";
	otherwise:
		say "You open the dresser drawer to reveal: [list of things in Dresser]. And a dead spider. Boring."
			[else have it describe contents or lack there of dresser]
			[Maybe change dresser to just a container and don't put things on it]
Dead Spider is scenery in Bedroom. The description is "A dead spider. What did you think it was? A molerat? Did you really thing it would change just by looking at it closer?"
Instead of taking Dead Spider:
	say "Actually, you're scared to death of spiders. How about you don't put that in your pocket."
Clock is a thing in bedroom. The description is "5:00 PM".
Calender is a thing in bedroom. The description is "March 8, 2013".
Suitcase is a closed openable container in the living room. The description is "The biggest suitcase you own filled with everything you could fit inside."
Clean Shirt is a wearable thing in the suitcase. "[if player is wearing Clean Shirt]A nice collared black cotton shirt.[otherwise]A clean shirt you packed in your suitcase."
Clean Pants is a wearable thing in the suitcase. "[if player is wearing Clean Pants]The first pair of clean jeans you've worn in two weeks.[otherwise]A clean pair of pants you packed in your suitcase."

Kitchen is a room. It is east of the living room. The description is "The Living Room is west."
Table is a supporter in the kitchen. It is fixed in place.
Refrigerator is a closed openable container in the kitchen. Understand "fridge" or "refrigerator" as refrigerator. It is fixed in place.
Root Beer is an edible thing in the Refrigerator. The description is "Barq's delicious root beer."
Pineapple Juice is an edible thing in the Refrigerator.

Living Room is a room. The description is "The Bedroom is west. The Kitchen is east. The Front Door is north."
Front Door is a closed unopenable door. It is north of the living room. 

Rug is a thing. The description is "There is a rug on the floor in the living room. You don't know why but this rug seems really out of place." [make rug hidden untill Elle trips on it]
Couch is an enterable supporter in the Living Room. It is fixed in place. The description is "A white cloth couch in the middle of the living room."

Hidden Door is a locked secret door. It is below the Living room. It is above Basement. The description is "It's a hidden door made from the wood of the floor boards. It was covered by the rug."
Instead of examining rug for the first time:
	now the hidden door is revealed;	
	say "A hidden door under the rug? Cliche much."
Instead of taking rug for the first time:
	now the hidden door is revealed;
	say "A hidden door under the rug? Cliche much."
Understand "move [rug]" as taking.
Old Key unlocks hidden door. old key is carried by player. The description is "An old key that was given too you when you bought the house. It isn't for any of the doors though."

Basement is a room. It is below the hidden door. The description is "A small and poorly lit space beneath the living room."

Mirror is a open door. It is east of the Basement. It is west of Basement1. The description is "You see a full body mirror on the wall, but something is not right. You don't see your reflection, only the rest of the room around you. Odd- looks as if you could walk right through it." [make it so you can't close mirror]

EnteredDimension is a thing. [this is the condition for whether or not player can take things in the real world]
After player going through Mirror:
	say "You walk through the mirror into a room exactly like the one you just left, but something definately feels different.";
	continue the action;
	now EnteredDimension is in Other Dimension.

Basement1 is a room. It is east of Mirror. The printed name of Basement1 is "Basement". The description is "A small and poorly lit space beneath the living room."

Hidden Door1 is a lockable open door. It is below Living room1. It is above Basement1. The printed name of Hidden Door1 is "Hidden Door".
	
Living Room1 is a room. It is above Hidden Door1. The printed name of Living Room1 is "Living Room".
Couch1 is an enterable supporter in living room1. The printed name is "Couch". It is fixed in place. Understand "Couch" as Couch1. The description is "A white leather couch in the middle of the living room."
Front Door1 is an closed unopenable door. It is north of Living Room1. The printed name is "Front Door". Understand "front door" or "door" as Front Door1.
Instead of opening Front Door1:
	say "'Dude let's check out this house first. There's probs some monsters out there,' laughs Elle."

Kitchen1 is a room. It is west of Living Room1. The printed name of Kitchen1 is "Kitchen". 
Table1 is a supporter in the kitchen1. The printed name is "Table". Understand "table" as Table1. It is fixed in place.
Refrigerator1 is a closed openable container in kitchen1. The printed name is "Refrigerator". Understand "refrigerator" as Refrigerator1. Understand "fridge" or "refrigerator" as refrigerator1. It is fixed in place.
Root Beer1 is an edible thing in the Refrigerator1. The printed name is "Root Beer". Understand "root beer" as Root Beer1. The description is "Barq's delicious root beer."
Pineapple Juice1 is an edible thing in the Refrigerator1. The printed name is "Pineapple Juice". Understand "pineapple juice" or "juice" as Pineapple Juice1.

Bedroom1 is a room. It is east of Living Room1. The printed name of Bedroom1 is "Bedroom".
Bed1 is enterable supporter in Bedroom1. It is fixed in place. The printed name of Bed1 is "Bed". Understand "bed" as Bed1.
Dresser1 is openable container in Bedroom1. The printed name is "Dresser". Understand "Dresser" as Dresser1.
Clock1 is a thing in bedroom1. The printed name of Clock1 is "Clock". Understand "clock" as Clock1. The description is "13:27 AM".
Calender1 is a thing in Bedroom1. The printed name is "Calender". Understand "calender" as Calender1. The description is "February 30, 2013."

Front Yard is a room. It is north of front door. Elle is in Front Yard. 
Every turn:
	if player is wearing Clean Shirt:
		if player is wearing Clean Pants:
			If Elle is in Front Yard:
				say "[line break]You hear the doorbell ring."


After wearing Clean Shirt:
	After wearing Clean Pants:
		instead of opening front door for the first time:
			now rug is in Living Room;
			now Elle is in Living Room;
			now Mail is in Living Room;
				say "You open the front door and see Elle standing there. [paragraph break]'Hey you, got your mail. There's an party invitation from Sarah.' she says, smiling before walking in and looking around. 'Not the nicest place in the world,' she remarks, 'but I'm glad you finally found one-Ah!'[paragraph break] She suddenly trips on a rug and drops the mail in her hand. You rush over and help her up. 'Sorry about that,' she laughs. 'We should probably do something about the rug though. If not, knowing me, this'll definately happen again.'".
				
Mail is a thing. Understand "Letter" as mail. The description is "Sarah Martin is a friend of Elle's. She's inviting you two to a party next weekend. You don't like her much but don't mind going along so long as you're with Elle."
[Instead of taking mail:
	if living room1 is unvisited;
	say "Don't bother with the mail right now, do something about the rug for Elle.".]

Mail1 is a thing in living room1. The printed name is "Mail". Understand "mail" as Mail1. The description is "It's a letter to attend Sarah Martin's funeral next weekend."

After going to basement for the first time:
	now Elle is in the basement;
	say "[line break]Elle grabs your hand and slowly follows you. 'This is kind of creepy,' she says.";
	continue the action.	

After going to basement1 for the first time:
	now Elle is in basement1. [Elle does not appear in basement1]
		
After going to living room1 for the first time:
	now elle1
	 is in couch1;
	say "Elle lets go of your hand and sits down on the couch. 'Well that was anticlimactic,' she says. 'I thought maybe something cool would happen after going down there. Oh well, I'm thristy. Can you get me a drink? Maybe some of that root beer I love so much?'";
	continue the action.

After taking root beer1 for the first time:
	now Elle1 is in kitchen1;
	say "Suddenly you see Elle walk into the kitchen."
Instead of giving Pineapple Juice1 to Elle1:
	say "'Oh thanks! Pineapple juice is totally my favorite,' says Elle. 'Oh could you get me the mail?'";
	now Elle1 has pineapple juice1. 
Instead of giving Root Beer1 to Elle1 for the first time:
	Now Elle1 has Pineapple Juice1;
	say "Elle takes the Pineapple Juice and says, 'C'mon, you know I hate root beer. Oh could you also bring me the mail?'"
Instead of giving Root Beer1 to Elle1:
	say "Why do you wan't me to drink root beer so badly?"
Notroot beer1 is a thing. Elle is holding notroot beer1.
[After going to living room1:
	if elle is holding notroot beer1:
		if 
		say "'Hey did you bring me my root beer?' asks Elle.";
	otherwise:
		continue the action.]

After going to living room1:
	if Elle is on couch1:
		if Elle1 has pineapple juice1:
			say "'Hey did you bring me my root beer?' asks Elle.";
			continue the action;
		otherwise:
			continue the action.
Instead of giving root beer1 to Elle:
	say "'Thanks! I don't know why but root beer is my favorite,' says Elle.";
	now Elle has root beer1.
Instead of giving pineapple juice1 to Elle:
	say "'Hey now, I asked for some root beer,' says Elle."
Instead of giving mail1 to Elle:
	say "'Wait what?' Elle exclaimed. 'This isn't what I brought in earlier? And I was just with Sarah the other day! Help me figure out what's going on here. Let me know if you discover anything!'";
	now Elle has mail1.

Instead of giving Clock1 to Elle:
	say "'What is up with this clock? This doesn't even make sense by 24 hour standards,' says Elle with a suspicious look on her face.";
	now Elle has Clock1.	
Instead of giving Calender1 to Elle:
	say "'Wait February 30? That doesn't make sense even with a leap year!' exclaims Elle. 'This doesn't make any sense.'";
	now Elle has Calender1.

Escape is a thing. 
Explanation is a thing in other dimension.
An every turn rule:
	if Elle is holding mail1:
		if Elle is holding clock1:
			if Elle is holding calender1:
				if explanation is in other dimension:
					say "'The mirror!' exclaims Elle. 'Things started getting weird after we went down into the basement. It sounds crazy but that must be it!' [line break]Elle suddenly freezes. Her shocked expression locked on something behind you. You turn and suddenly see- Elle! in the kitchen glaring at both of you. Her stare is piercing, her teeth gritted, her stance wide. Your eyes only shift from her haunting expression to notice the large kitchen knife she's holding in her hand.[paragraph break]'It's- Me?!' the Elle next to you shrieks. She turns and looks at you, 'I can see why you were probably so confused earlier,' she says. [paragraph break]'I don't know where you came from!' screamed the other Elle, 'but He's staying here!' She suddenly begins slowly walking toward you, knife in hand. [paragraph break]'We've got to get out of here!' pleads Elle, grabbing your arm. 'C'mon!'";
					now escape is in other dimension;
					now explanation is in real world.

After going to basement1:
	if escape is in other dimension:
		now Elle is in basement1;
		say "You and Elle rush down to the basement, slaming the hidden door shut behind you. Elle's hand is holding on tightly to yours as you make it all the way down. Suddenly the hidden door is flung open as other Elle runs down the stairs. 'I said you can't have him!' she screams as she rushes down with the knife.";
		now Elle1 is in basement1;
		continue the action.

After going through mirror:
	if escape is in other dimension:
		now Elle is in basement;
		change description of mirror to "You don't see your reflections, but what you do see is other Elle running toward you with the knife. Her image is getting bigger and bigger as it seemingly drawers nearer and nearer.";
		say "You and Elle find yourselves in the basement alone. You look at each other and feel a sudden sense of relief. However you both freeze again when you suddenly hear the other Elle screaming, 'Stop! You can't have him!'";
		continue the action.

Understand "breaking [something]" as breaking. Breaking is an action applying to one thing.
Instead of breaking mirror:
	if escape is in other dimension:
		say "You quickly lash out and punch the mirror, shattering other Elle's image just as she was about to reach you. The shiny fragments fall to the ground as you and Elle are left standing alone in the poorly lit basement. You hug her tight and lead her up and out of the basement, before locking the door, and throwing away the key.";
		end the game in victory;
	otherwise:
		continue the action.

[Check Talking To:
	if noun is Elle:
		if player is holding pineapple juice1:
			say "'I don't care much for pineapple much.' says Elle.";
		if player is holding root beer1:
			now Elle has root beer;
			say "'Thanks! I don't know why but root beer is my favorite.' says Elle.";
		if player is holding mail1: 
			say "'Wait what?' Elle exclaimed. 'I was just with Sarah earlier today. Is this some kind of sick joke?'"
	
Check Talking To:		
	if noun is Elle1:
		if player is in kitchen1:
			say "'Hey, got anything to drink?' says Elle."]


	
