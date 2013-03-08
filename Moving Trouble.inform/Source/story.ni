"Inform Final Project" by Nolan Chung

Include Secret Doors by Andrew Owen.

Understand "talk to [someone]" as Talking To. Talking To is an action applying to one thing.

When play begins:
	say "You've just arrived at your new house a couple of hours ago but instantly crashed on your new bed when you got there. You just woke up from your nap and realized it's already 5:00 pm. Your girlfriend Ellie was going to come over to see the new place. You'd better start actually looking around now. It's a little run down but hey, what did you expect from craigslist. Too bad you can't afford a nicer place yet."

Bedroom is a room. It is west of the Living Room. The description is "The Living Room is east."
Bed is enterable supporter in the bedroom. 
Dresser is scenery supporter in bedroom.
Alarm Clock is a thing on the Dresser. The description is "5:00 PM".
Calender is a thing in bedroom. The description is "March 8, 2013".
Suitcase is a openable container in the living room. The description is "The biggest suitcase you own filled with everything you could fit inside."


Kitchen is a room. It is east of the living room. The description is "The Living Room is west."
Table is a thing in the kitchen. 

Living Room is a room. The description is "The Bedroom is west. The Kitchen is east."
Rug is a thing in the living room. The description is "There is a rug on the floor in the living room. You don't know why but this rug seems really out of place."
Couch is a thing in the Living Room. 

Hidden Door is a secret door. It is below the Living room. It is above Basement.
Instead of examining rug for the first time:
	now the hidden door is revealed;	
	say "A hidden door under the rug? Cliche much."
Instead of taking rug for the first time:
	now the hidden door is revealed;
	say "A hidden door under the rug? Cliche much."

Basement is a room. It is below the hidden door. 

Mirror is a door. It is east of the Basement. The description is "You see a full body mirror on the wall, but something is not right. You don't see your reflection, only the rest of the room around you. Odd looks as if you could walk right through it."

After player going through Mirror:
	say "Odd Everything seems to be the same. But something definately feels different, but you can't tell what."

Basement1 is a room. It is east of Mirror. The printed name of Basement1 is "Basement". 

Hidden Door1 is a door. It is below Living room1. It is above Basement1. The printed name of Hidden Door1 is "Hidden Door".
	
Living Room1 is a room. It is above Hidden Door1. The printed name of Living Room1 is "Living Room" 

Kitchen1 is a room. It is west of Living Room1. The printed name of Kitchen1 is "Kitchen". 

Bedroom1 is a room. It is east of Living Room1. The printed name of Bedroom1 is "Bedroom".
Bed1 is enterable supporter in Bedroom1. It is fixed in place. The printed name of Bed1 is "Bed".
Dresser1 is scenery in Bedroom1. The printed name is "Dresser". Understand "Dresser" as Dresser1.
Alarm Clock1 is a thing on the Dresser1. The printed name of Alarm Clock1 is "Alarm Clock".
Calender1 is a thing in Bedroom1. The printed name is "Calender". 

Elle is a woman. She is in Basement.
	
Check Talking To:
	if noun is Elle:
		if player is in Basement:
			say "'insert what you say here,' you say. [line break] 'insert what she say's here.'"
			
	
