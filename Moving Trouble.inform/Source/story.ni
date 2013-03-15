"Inform Final Project" by Nolan Chung

Understand "xyzzy" or "say xyzzy" or "cast xyzzy" as casting xyzzy.
Casting xyzzy is an action applying to nothing.
Check casting xyzzy:
	say "Insert Easter Egg here"

Include Secret Doors by Andrew Owen.

Understand "talk to [someone]" as Talking To. Talking To is an action applying to one thing.
The Description of player is "[if player is wearing Dirty Shirt] You are wearing a dirty shirt.[end if] [if player is wearing Dirty Pants] You are wearing dirty pants.[end if] [if player is wearing Clean Shirt] You are wearing a clean shirt.[end if] [if player is wearing clean pants] You are wearing clean pants.[end if]"

When play begins:
	now the player is in bed;
	now Player is wearing Dirty Shirt;
	now the Player is wearing Dirty Pants;
	say "You've just arrived at your new house a couple of hours ago but instantly crashed on your new bed when you got there. You just woke up from your nap and realized it's already 5:00 pm. Your girlfriend Ellie was going to come over to see the new place. You'd better start actually looking around now. It's a little run down but hey, what did you expect from craigslist. Too bad you can't afford a nicer place yet."

After getting off bed for first time:
	say "You'd better get into some clean clothes before Ellie gets here."

Dirty Shirt is a wearable thing. [make it so you can't wear both shirts and pants at same time]
Dirty Pants is a wearable thing.

Bedroom is a room. It is west of the Living Room. The description is "The Living Room is east."
Bed is enterable supporter in the bedroom. The description is "Just a cheap matress. You don't have money to spare buying some fancy sleep number bed or whatever it is."
Understand "get into [something]" as climbing. 
Understand "get out of [something]" as getting off. [game looks round room everytime you get out of bed]
Dresser is a scenery supporter in bedroom. The description is "A small dresser in your bedroom. There is one big dresser drawer."
Dresser Drawer is a closed openable container in bedroom. It is undescribed. 
Instead of opening Dresser Drawer:
	If player is wearing Dirty Shirt:
		If player is wearing Dirty Pants:
			say "You haven't unpacked your things yet. Your clothes must be in your suitcase somewhere."
			[else have it describe contents or lack there of dresser]
			[Maybe change dresser to just a container and don't put things on it]
Clock is a thing on the Dresser. The description is "5:00 PM".
Calender is a thing in bedroom. The description is "March 8, 2013".
Suitcase is a closed openable container in the living room. The description is "The biggest suitcase you own filled with everything you could fit inside."
Clean Shirt is a wearable thing in the suitcase. "A clean shirt you packed in your suitcase."
Clean Pants is a wearable thing in the suitcase. "A clean pair of pants you packed in your suitcase."

Kitchen is a room. It is east of the living room. The description is "The Living Room is west."
Table is a thing in the kitchen. 

Living Room is a room. The description is "The Bedroom is west. The Kitchen is east. The Front Door is north."
Front Door is a closed unopenable door. It is north of the living room. 
Rug is a thing in the living room. The description is "There is a rug on the floor in the living room. You don't know why but this rug seems really out of place."
Couch is an enterable supporter in the Living Room. It is fixed in place.

Hidden Door is a secret door. It is below the Living room. It is above Basement.
Instead of examining rug for the first time:
	now the hidden door is revealed;	
	say "A hidden door under the rug? Cliche much."
Instead of taking rug for the first time:
	now the hidden door is revealed;
	say "A hidden door under the rug? Cliche much."
Understand "move [rug]" as taking.
	
Basement is a room. It is below the hidden door. 

Mirror is a open door. It is east of the Basement. The description is "You see a full body mirror on the wall, but something is not right. You don't see your reflection, only the rest of the room around you. Odd looks as if you could walk right through it." [make it so you can't close mirror]

After player going through Mirror:
	say "Odd Everything seems to be the same. But something definately feels different."

Basement1 is a room. It is east of Mirror. The printed name of Basement1 is "Basement". 

Hidden Door1 is an open door. It is below Living room1. It is above Basement1. The printed name of Hidden Door1 is "Hidden Door".
	
Living Room1 is a room. It is above Hidden Door1. The printed name of Living Room1 is "Living Room".
Couch1 is an enterable supporter in living room1. The printed name is "Couch". It is fixed in place. 

Kitchen1 is a room. It is west of Living Room1. The printed name of Kitchen1 is "Kitchen". 

Bedroom1 is a room. It is east of Living Room1. The printed name of Bedroom1 is "Bedroom".
Bed1 is enterable supporter in Bedroom1. It is fixed in place. The printed name of Bed1 is "Bed".
Dresser1 is scenery in Bedroom1. The printed name is "Dresser". Understand "Dresser" as Dresser1.
Clock1 is a thing on the Dresser1. The printed name of Clock1 is "Clock".
Calender1 is a thing in Bedroom1. The printed name is "Calender". 

Instead of wearing Clean Shirt for the first time:
	if player is wearing Clean Pants:
		say "[paragraph break] You hear the doorbell ring";
		continue the action. [fixed using for the first time. Before after just putting on pants doorbell would ring]

After wearing Clean Shirt:
	After wearing Clean Pants:
		instead of opening front door for the first time:
			now Elle is in Living Room;
			now Mail is in Living Room;
				say "You open the front door and see Elle standing there. [paragraph break]'Hey you, got your mail,' she says, smiling before walking in. 'Not the nicest place in the world,' she remarks, 'but I'm glad you finally found one-Ah!'[paragraph break] She suddenly trips on the rug and drops the mail in her hand. You rush over and help her up. 'Sorry about that,' she laughs. 'We should probably do something about the rug though. If not knowing me this'll definately happen again.'".
				
Mail is a thing. Understand "Letter" as mail. The description is "Sarah Martin is a friend of Elle's. She's inviting you two to a party next weekend. You don't like her much but don't mind going along so long as your with Elle."

Mail1 is a thing in living room1. The printed name is "Mail". The description is "It's a letter to attend Sarah Martin's funeral next weekend."

After going to basement for the first time:
	now Elle is in the basement.
	
After going to basement1 for the first time:
	now Elle is in basement1.
	
After going to living room1 for the first time:
	now Elle is in couch1;
	say "Well that was anticlimactic. I thought maybe something cool would happen after going down there."

Elle is a woman. 
	
Check Talking To:
	if noun is Elle:
		say "'insert what you say here,' you say. [line break] 'insert what she say's here.'"
			
	
