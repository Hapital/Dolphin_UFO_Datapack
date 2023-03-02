# 強いやつの常時実行
## 見た目
execute as @e[tag=strong_attack_main] at @s run particle dust 0.478 1 1 1.3 ~ ~1 ~ 0 0 0 0 1
execute as @e[tag=strong_attack_main] at @s run particle dust 0.478 1 0.8 1.3 ~ ~1 ~ 0 0 0 0 1
execute as @e[tag=strong_attack_main] at @s run particle dust 1 0.227 0.227 1.3 ~ ~1 ~ 0 0 0 0 1
## システム
### 移動
execute as @e[tag=strong_attack_main] at @s run tp @s ^ ^ ^0.2
### 攻撃
execute at @e[tag=strong_attack_main] if entity @e[distance=..3,type=!armor_stand,type=!dolphin,type=!item,type=!experience_orb] run summon tnt ~ ~ ~ {Fuse:2}
#### tntいたら自分kill
execute as @e[tag=strong_attack_main] at @s if entity @e[distance=..3,type=tnt,nbt={Fuse:1s},limit=1] run kill @s
### 20ブロック以内にプレイヤーいなかったらじぶんkill
execute as @e[tag=strong_attack_main] at @s unless entity @e[type=player,distance=..20] run kill @s