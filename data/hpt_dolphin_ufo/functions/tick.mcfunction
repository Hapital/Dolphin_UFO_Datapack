## ufo_chair_main
execute as @e[type=pig,tag=dlp_ufo_cha] at @s run function hpt_dolphin_ufo:dlp_ufo_cha_main
## ufo_dlp_main
kill @e[tag=dlp_ufo_inta,scores={hpt_dolph_ufo_motion_x=2..}]
execute as @e[type=dolphin,tag=dlp_ufo_main] at @s run function hpt_dolphin_ufo:dlp_ufo_main
execute if entity @e[tag=weak_attack_main] unless entity @e[tag=dlp_ufo_main] run kill @e[tag=weak_attack_main]
execute if entity @e[tag=strong_attack_main] unless entity @e[tag=dlp_ufo_main] run kill @e[tag=strong_attack_main]

## player_motion
execute as @a store result score @s hpt_dolph_ufo_motion_x run data get entity @s Motion[0] 1000
execute as @a store result score @s hpt_dolph_ufo_motion_z run data get entity @s Motion[2] 1000
execute as @a store result score @s hpt_SelectedItemSlot run data get entity @s SelectedItemSlot