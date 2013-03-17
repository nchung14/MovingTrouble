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
		say "You don't need that right now."

The Description of player is "[if player is wearing Dirty Shirt] You are wearing a dirty shirt.[end if] [if player is wearing Dirty Pants] You are wearing dirty pants.[end if] [if player is wearing Clean Shirt] You are wearing a clean shirt.[end if] [if player is wearing clean pants] You are wearing clean pants.[end if]"

When play begins:
	now the player is in bed;
	now Player is wearing Dirty Shirt;
	now the Player is wearing Dirty Pants;
	say "You've just arrived at your new house a couple of hours ago but instantly crashed on your new bed when you got there. You just woke up from your nap and realized it's already 5:00 pm. Your girlfriend Elle was going to come over to see the new place. You'd better start actually looking around now. It's a little run down but hey, what did you expect from craigslist. Too bad you can't afford a nicer place yet."

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
Table is a thing in the kitchen. 

Living Room is a room. The description is "The Bedroom is west. The Kitchen is east. The Front Door is north."
Front Door is a closed unopenable door. It is north of the living room. 

Rug is a thing. The description is "There is a rug on the floor in the living room. You don't know why but this rug seems really out of place." [make rug hidden untill Elle trips on it]
Couch is an enterable supporter in the Living Room. It is fixed in place. The description is "A white cloth couch in the middle of the living room."

Hidden Door is a secret door. It is below the Living room. It is above Basement. The description is "It's a hidden door made from the wood of the floor boards. It was covered by the rug."
Instead of examining rug for the first time:
	now the hidden door is revealed;	
	say "A hidden door under the rug? Cliche much."
Instead of taking rug for the first time:
	now the hidden door is revealed;
	say "A hidden door under the rug? Cliche much."
Understand "move [rug]" as taking.
	
Basement is a room. It is below the hidden door. 

Mirror is a open door. It is east of the Basement. It is west of Basement1. The description is "You see a full body mirror on the wall, but something is not right. You don't see your reflection, only the rest of the room around you. Odd- looks as if you could walk right through it." [make it so you can't close mirror]

EnteredDimension is a thing. [this is the condition for whether or not player can take things in the real world]
After player going through Mirror:
	say "You walk through the mirror into a room exactly like the one you just left, but something definately feels different.";
	continue the action;
	now EnteredDimension is in Other Dimension.

Basement1 is a room. It is east of Mirror. The printed name of Basement1 is "Basement". 

Hidden Door1 is an open door. It is below Living room1. It is above Basement1. The printed name of Hidden Door1 is "Hidden Door".
	
Living Room1 is a room. It is above Hidden Door1. The printed name of Living Room1 is "Living Room".
Couch1 is an enterable supporter in living room1. The printed name is "Couch". It is fixed in place. Understand "Couch" as Couch1. The description is "A white leather couch in the middle of the living room."
Front Door1 is an closed unopenable door. It is north of Living Room1. The printed name is "Front Door". Understand "front door" or "door" as Front Door1.
Instead of opening Front Door1:
	say "'Dude let's check out this house first. There's probs some monsters out there,' laughs Elle."

Kitchen1 is a room. It is west of Living Room1. The printed name of Kitchen1 is "Kitchen". 

Bedroom1 is a room. It is east of Living Room1. The printed name of Bedroom1 is "Bedroom".
Bed1 is enterable supporter in Bedroom1. It is fixed in place. The printed name of Bed1 is "Bed". Understand "bed" as Bed1.
Dresser1 is openable container in Bedroom1. The printed name is "Dresser". Understand "Dresser" as Dresser1.
Clock1 is a thing in bedroom1. The printed name of Clock1 is "Clock". Understand "clock" as Clock1. The description is "13:27".
Calender1 is a thing in Bedroom1. The printed name is "Calender". Understand "calender" as Calender1. The description is "February 24, 2013."

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
				say "You open the front door and see Elle standing there. [paragraph break]'Hey you, got your mail,' she says, smiling before walking in and looking around. 'Not the nicest place in the world,' she remarks, 'but I'm glad you finally found one-Ah!'[paragraph break] She suddenly trips on a rug and drops the mail in her hand. You rush over and help her up. 'Sorry about that,' she laughs. 'We should probably do something about the rug though. If not, knowing me, this'll definately happen again.'".
				
Mail is a thing. Understand "Letter" as mail. The description is "Sarah Martin is a friend of Elle's. She's inviting you two to a party next weekend. You don't like her much but don't mind going along so long as you're with Elle."
[Instead of taking mail:
	if living room1 is unvisited;
	say "Don't bother with the mail right now, do something about the rug for Elle.".]

Mail1 is a thing in living room1. The printed name is "Mail". Understand "mail" as Mail1. The description is "It's a letter to attend Sarah Martin's funeral next weekend."

After going to basement for the first time:
	now Elle is in the basement;
	say "Elle grabs your hand and slowly follows you. 'This is kind of creepy,' she says.";
	continue the action.	

After going to basement1 for the first time:
	now Elle is in basement1. [Elle does not appear in basement1]
		
After going to living room1 for the first time:
	now Elle is in couch1;
	say "Elle lets go of your hand and sits down on the couch. 'Well that was anticlimactic,' she says. 'I thought maybe something cool would happen after going down there.'";
	continue the action.

Elle is a woman. 
	
Check Talking To:
	if noun is Elle:
		say "'insert what you say here,' you say. [line break] 'insert what she say's here.'"
			
	
