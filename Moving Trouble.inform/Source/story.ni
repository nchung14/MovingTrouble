"Inform Final Project" by Nolan Chung

Include Secret Doors by Andrew Owen.

When play begins:
	say "You've just arrived at your new house a couple of hours ago but instantly crashed on your new bed when you got there. You just woke up from your nap and realized it's already 5:00 pm. Your girlfriend Ellie was going to come over to see the new place. You'd better start actually looking around your new place. It's a little run down but hey, what did you expect from craigslist. Too bad you can't afford a nicer place yet."

Bedroom is a room. It is west of the Living Room. The description is "The Living Room is east."

Kitchen is a room. It is east of the living room. The description is "The Living Room is west."

Living Room is a room. The description is "The Bedroom is west. The Kitchen is east."
Rug is a thing in the living room. 

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