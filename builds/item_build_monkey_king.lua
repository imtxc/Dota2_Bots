-- http://dota2.gamepedia.com/Monkey_King
X = {}
X["items"] = { 
                "item_tango",
		"item_poor_mans_shield"
	};

-- Set up Skill build
local SKILL_Q = "monkey_king_boundless_strike";
local SKILL_W = "monkey_king_tree_dance";
local SKILL_E = "monkey_king_jingu_mastery";
local SKILL_R = "monkey_king_mischief";    
local SKILL_D = "monkey_king_primal_spring_early";    -- no levels

local ABILITY1 = "special_bonus_attack_speed_20"
local ABILITY2 = "special_bonus_armor_5"
local ABILITY3 = "special_bonus_hp_275"
local ABILITY4 = "special_bonus_movement_speed_20"
local ABILITY5 = "special_bonus_attack_damage_40"
local ABILITY6 = "special_bonus_strength_15"
local ABILITY7 = "special_bonus_magic_resistance_25"
local ABILITY8 = "special_bonus_unique_monkey_king"

--use -1 for levels that shouldn't level a skill
X["skills"] = {
    SKILL_E,    SKILL_Q,    SKILL_E,    SKILL_W,    SKILL_E,
    SKILL_R,    SKILL_E,    SKILL_Q,    SKILL_Q,    "-1",--"special_bonus_intelligence_8",
    SKILL_Q,    SKILL_W,    SKILL_W,    SKILL_W,    "-1",--"special_bonus_attack_damage_40",
    SKILL_R,    "-1",       SKILL_R,    ABILITY2,   ABILITY3,--"special_bonus_spell_amplify_8",
    ABILITY5,   ABILITY7,   "-1",       "-1",       "-1",--"special_bonus_gold_income_50"
};

return X
