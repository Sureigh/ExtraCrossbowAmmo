Hooks:PostHook( WeaponTweakData, "init", "gun-tweak", function(self)  --replace "gun-tweak" with the name of this file

--displayed stats

self.weapon id here.CLIP_AMMO_MAX = x --magazine size.
self.weapon id here.AMMO_MAX = x --total ammo.
self.weapon id here.fire_mode_data.fire_rate = x --firerate (for calculation see below).
self.weapon id here.stats.damage = x --damage. some weapons, mostly sniper rifles and explosives, have a damage multiplier. remember to factor it in if you choose to rebalance these. additionally, changing this stat won't affect the actual damage dealt by explosives. in their case, the damage stat exists only for display, and the actual damage is handled by the projectile.
self.weapon id here.stats.spread = x --accuracy, gets multiplied by 4 and 4 is subtracted (for example 10 spread = 36 accuracy).
self.weapon id here.stats.recoil = x --stability, gets multiplied by 4 and 4 is subtracted (for example 10 recoil = 36 stability).
self.weapon id here.stats.suppression = x --threat, the distance on which enemies are suppressed by your gun, meaning they duck and jump for cover. 1 is the maximum value (43), 20 is the minimum value (0).
self.weapon id here.stats.concealment = x --concealment.
self.weapon id here.damage_falloff = x --damage falloff template name here. templates are defined in weaponfallofftweakdata.lua. list of templates in the list provided.

self.weapon id here.stats_modifiers = {damage = x} --damage multiplier. used for sniper rifles and the displayed stat of explosives. the weapon damage as defined above will be modified by the value put in in place of x.

--hidden stats

self.weapon id here.AMMO_PICKUP = {minimum, maximum} --ammo pickup is randomized between the two values.
self.weapon id here.can_shoot_through_enemy = x --true or false.
self.weapon id here.can_shoot_through_wall = x --true or false.
self.weapon id here.can_shoot_through_shield = x --true or false.
self.weapon id here.armor_piercing_chance = x --1 for always piercing, 0 for no piercing. can be any value inbetween for a chance of piercing.
self.weapon id here.stats.alert_size = x --the distance at which your gun shots are audible, matters only really in stealth. similarly to suppression, 1 is the maximum value, 20 is the minimum value (the gun is quiet as far as the game is concerned). distance table in READ ME FIRST.txt.

--shotgun exclusive stats

self.weapon id here.damage_near = x --the distance before any falloff is applied, measured in centimeters (100 = 1m). applies ONLY to shotguns. by default the value is 2000 for all shotguns.
self.weapon id here.damage_far = x --the distance from the point where falloff is applied to the point where the damage is no longer applied. for example, if damage_near is 300 and damage_far is 300, then after 3 meters the damage will start falling off, decreasing gradually with distance, and at 6 meters (300+300=600) the hits will no longer register. applies ONLY to shotguns. by default the value is 5000 for all shotguns.
self.weapon id here.rays = x --the amount of pellets shot from the gun. each pellet deals full damage, but only one (per enemy) can apply it - so more pellets don't mean more damage, but more chances to hit. applies ONLY to shotguns.

--advanced options, best not touch them

self.weapon id here.categories = {"x"} --changes both the category the weapon is listed in, as well as the category to which skills apply. list of possible categories below.
self.weapon id here.use_data.selection_index = x --1 for secondary, 2 for primary.
self.weapon id here.FIRE_MODE = "x" --either auto or single.
self.weapon id here.CAN_TOGGLE_FIREMODE = x --either true or false.

--kick. the kick values define what way the gun goes when recoiling. these values then get modified by the stability stat to be more or less severe.

self.weapon id here.kick.standing = {a, b, c, d} --a is vertical minimum, b is vertical maximum, c is horizontal left, d is horizontal right. Positive horizontal values go up, negative values go down.
self.weapon id here.kick.crouching = self.weapon id here.kick.standing --recoil when crouching
self.weapon id here.kick.steelsight = self.weapon id here.kick.standing --recoil when aiming down sights
--crouching and steelsight values can be changed independently of the standing kick values. by default, they are set to be the same.

end )

--[[

replace the entire "weapon id here" bit so that only the weapon id is between the dots (for example "self.glock_17.stats")

if you don't need/want to edit either of these, just remove the line. if the stat isn't overriden, it remains the same as vanilla. 

for firerate, open up calculator and divide 60 by your desired RPM (for example, 60/600 = 0.1), then paste in the value in place of x. remember to use the dot instead of the comma.

shotgun exclusive stats only apply to shotguns. even if you change the weapon category, the exclusive stats still do not apply to that weapon.

list of categories: {"assault_rifle"}, {"shotgun"}, {"lmg"}, {"snp"}, {"akimbo", "pistol"}, {"akimbo", "smg"}, {"akimbo", "shotgun"}, {"wpn_special"}, {"pistol"}, {"smg"}. shotguns and specials can be both secondary and or primary. pistols and smgs can only be secondary.

if you add an auto mode to a weapon that doesn't have it, the weapon will use the car-4's animations due to the fact that single and auto fire use separate firing animations.

weapon ids can be found either at https://payday.fandom.com/wiki/Weapons_(Payday_2) on the specific weapons' sites or on https://wiki.modworkshop.net/books/payday-2/page/weapons in a big list all together

]]