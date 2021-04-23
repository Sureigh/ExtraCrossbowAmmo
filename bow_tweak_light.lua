Hooks:PostHook( WeaponTweakData, "init", "bow_tweak_light", function(self)  --replace "gun-tweak" with the name of this file

--displayed stats

self.frankish.AMMO_MAX = 25
self.frankish.stats.damage = 650
self.frankish.stats.recoil = 3.5
self.frankish.stats.suppression = 18
-- self.frankish.damage_falloff = "SNIPER_FALL_LOW" --damage falloff template name here. templates are defined in weaponfallofftweakdata.lua. list of templates in the list provided.

self.frankish.stats_modifiers = {damage = x} --damage multiplier. used for sniper rifles and the displayed stat of explosives. the weapon damage as defined above will be modified by the value put in in place of x.

--hidden stats

self.frankish.AMMO_PICKUP = {0.5, 0.85} --ammo pickup is randomized between the two values.
self.frankish.can_shoot_through_enemy = true --true or false.
self.frankish.can_shoot_through_wall = true --true or false.
self.frankish.can_shoot_through_shield = true --true or false.
self.frankish.armor_piercing_chance = 1 --1 for always piercing, 0 for no piercing. can be any value inbetween for a chance of piercing.
self.frankish.stats.alert_size = 18 --the distance at which your gun shots are audible, matters only really in stealth. similarly to suppression, 1 is the maximum value, 20 is the minimum value (the gun is quiet as far as the game is concerned). distance table in READ ME FIRST.txt.

--advanced options, best not touch them

self.frankish.categories = {"x"} --changes both the category the weapon is listed in, as well as the category to which skills apply. list of possible categories below.

--kick. the kick values define what way the gun goes when recoiling. these values then get modified by the stability stat to be more or less severe.

self.frankish.kick.standing = {2.4, 3.2, -1.5, 1.5} --a is vertical minimum, b is vertical maximum, c is horizontal left, d is horizontal right. Positive horizontal values go up, negative values go down.

end )

--[[

for firerate, open up calculator and divide 60 by your desired RPM (for example, 60/600 = 0.1), then paste in the value in place of x. remember to use the dot instead of the comma.

list of categories: {"assault_rifle"}, {"shotgun"}, {"lmg"}, {"snp"}, {"akimbo", "pistol"}, {"akimbo", "smg"}, {"akimbo", "shotgun"}, {"wpn_special"}, {"pistol"}, {"smg"}. shotguns and specials can be both secondary and or primary. pistols and smgs can only be secondary.

if you add an auto mode to a weapon that doesn't have it, the weapon will use the car-4's animations due to the fact that single and auto fire use separate firing animations.

weapon ids can be found either at https://payday.fandom.com/wiki/Weapons_(Payday_2) on the specific weapons' sites or on https://wiki.modworkshop.net/books/payday-2/page/weapons in a big list all together

]]