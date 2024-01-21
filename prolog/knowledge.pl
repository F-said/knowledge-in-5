% a prolog program to map associations b/w the halo universe 
% (prefer knowledge < halo3 with selective info > halo3)
% im thomas jeffersoning it up

% active species
alive(human).
alive(sangheili).
alive(kig_yar).
alive(jiralhanae).
alive(unggoy).

% dead species
dead(forerunners).
dead(precursors).

% species factions
species(human, unsc).

species(sangheili, covenant_separatists).

species(kig_yar, covenant).
species(jiralhanae, covenant).
species(san_shyuum, covenant).
species(unggoy, covenant).

species(flood, precursors).

% alliances
ally(unsc, covenant_separatists).

% enemies
enemy(covenant, unsc).
enemy(covenant, covenant_separatists).

enemy(flood, unsc).
enemy(flood, covenant).
enemy(flood, covenant_separatists).
enemy(flood, forerunners).

enemy(precursors, forerunners).

enemy(unsc, covenant).
enemy(unsc, flood).

enemy(covenant_separatists, covenant).
enemy(covenant_separatists, flood).

% unsc ship
ship_faction(unsc, pillar_of_autumn).
ship_faction(unsc, two_for_flinching).
ship_faction(unsc, dark_was_the_night).

% seperatist ships
ship_faction(covenant_separatists, pillar_of_autumn).

% covenant ships
ship_faction(covenant, clarity_of_faith).
ship_faction(covenant, shadow_of_intent).
ship_faction(covenant, long_night_of_solace).

% logic of war
attack(Ship1, Ship2) :- 
	ship_faction(Fact1, Ship1), 
	ship_faction(Fact2, Ship2),
	enemy(Fact1, Fact2).

% rules of halo rings


% rules of covenant


% rules of unsc


% rules of cov seperatists


% rules of flood


% rules of forerunners



