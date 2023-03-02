# 弱いやつの常時実行
## 見た目
execute as @e[tag=weak_attack_main] at @s run particle dust 0.478 1 1 0.7 ~ ~1 ~ 0 0 0 0 1
execute as @e[tag=weak_attack_main] at @s run particle dust 0.478 1 0.8 0.7 ~ ~1 ~ 0 0 0 0 1

## システム
### 移動
execute as @e[tag=weak_attack_main] at @s run tp @s ^ ^ ^0.9

### ダメージを与える(プレイヤー含む)
execute at @e[tag=weak_attack_main] if entity @e[distance=..0.9,type=!armor_stand,type=!dolphin] run damage @e[sort=nearest,limit=1,type=!armor_stand,type=!dolphin] 3.5 minecraft:player_attack by @s

### もし20ブロック以内にプレイヤーがいなかった場合に自分をキルする
execute as @e[tag=weak_attack_main] at @s unless entity @e[type=player,distance=..20] run kill @s