summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["weak_attack_main"],NoGravity:1b}
execute at @s run tp @e[tag=weak_attack_main,sort=nearest,limit=1] ~ ~ ~ ~ ~
execute at @s run tp @e[tag=weak_attack_main,sort=nearest,limit=1] ^ ^0.5 ^1.3
playsound minecraft:entity.bat.ambient master @s ~ ~ ~ 1 1.5
playsound minecraft:block.piston.extend master @s ~ ~ ~ 1 2