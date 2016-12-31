-- http://dota2.gamepedia.com/Monkey_King
X = {}
--[[ warning if meepo does not have an item other than 
brown boots / power treads at any time he will think he 
is a clone and skill/item decisions will break! ]]
X["items"] = { 
                "item_tango",
                "item_clarity",
                "item_clarity",
				--"item_branches",
				--"item_branches",
				"item_circlet",
                "item_mantle",
                "item_recipe_null_talisman",
				--"item_bottle",
				--"item_magic_stick",
				"item_boots",
                "item_gloves",
                "item_belt_of_strength",
				--"item_energy_booster",
                "item_ring_of_regen",
				"item_staff_of_wizardry",
				"item_recipe_force_staff",
                "item_blink",
				"item_point_booster",
				"item_staff_of_wizardry",
				"item_ogre_axe",
				"item_blade_of_alacrity"
			};

-- Set up Skill build
local SKILL_Q = "monkey_king_boundless_strike";
local SKILL_W = "monkey_king_tree_dance";
local SKILL_E = "monkey_king_jingu_mastery";
local SKILL_R = "monkey_king_mischief";    
local SKILL_D = "monkey_king_primal_spring_early";    -- no levels


local ABILITY1 = "special_bonus_intelligence_8"
local ABILITY2 = "special_bonus_hp_150"
local ABILITY3 = "special_bonus_attack_damage_40"
local ABILITY4 = "special_bonus_movement_speed_20"
local ABILITY5 = "special_bonus_spell_amplify_8"
local ABILITY6 = "special_bonus_magic_resistance_20"
local ABILITY7 = "special_bonus_gold_income_50"
local ABILITY8 = "special_bonus_unique_puck"

--use -1 for levels that shouldn't level a skill
X["skills"] = {
    SKILL_E,    SKILL_Q,    SKILL_E,    SKILL_W,    SKILL_E,
    SKILL_R,    SKILL_E,    SKILL_Q,    SKILL_Q,    "-1",--"special_bonus_intelligence_8",
    SKILL_Q,    SKILL_W,    SKILL_W,    SKILL_W,    "-1",--"special_bonus_attack_damage_40",
    SKILL_R,    "-1",       SKILL_R,    ABILITY2,   ABILITY3,--"special_bonus_spell_amplify_8",
    ABILITY5,   ABILITY7,   "-1",       "-1",       "-1",--"special_bonus_gold_income_50"
};

return X
