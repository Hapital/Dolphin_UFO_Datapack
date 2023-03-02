# 弱い攻撃の玉召喚
## アマスタだす
summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["strong_attack_main"],NoGravity:1b}
### アマスタ矯正
execute at @s run tp @e[tag=strong_attack_main,sort=nearest,limit=1] ~ ~ ~ ~ ~
execute at @s run tp @e[tag=strong_attack_main,sort=nearest,limit=1] ^ ^0.5 ^3.3

## 音
playsound minecraft:entity.bat.ambient master @s ~ ~ ~ 1 0.1
playsound minecraft:block.piston.extend master @s ~ ~ ~ 1 0.1