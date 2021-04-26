Hooks:PostHook( WeaponFactoryTweakData, "init", "ECA_Bolts", function(self)
    -- TODO: should i be using override_weapon or custom_stats for this? fuck around and find out
    -- Rocket-propelled Bolts
    self.wpn_fps_bow_crossbow_m_rocket.override_weapon = {
        can_shoot_through_enemy = true,
        can_shoot_through_wall = true,
        can_shoot_through_shield = true,
        alert_size = 18,
        AMMO_PICKUP = {0.5, 0.85},
        categories = {"snp"},
        kick = {
            standing = {2.4, 3.2, -1.5, 1.5}
        }
    }

    -- Flaming Bolts
    self.wpn_fps_bow_crossbow_m_fire.override_weapon = {
        armor_piercing_chance = 0.5,
        AMMO_PICKUP = {0.8, 1.1}
    }
end )