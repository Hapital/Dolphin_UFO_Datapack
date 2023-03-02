# 見た目
## 黄金回転のイルカッ！
tp @e[tag=dlp_ufo_visual,limit=22,sort=nearest] ~ ~ ~

## 操作説明用アクションバー
execute on passengers if score @s hpt_SelectedItemSlot matches 0 run title @s actionbar "LC 上昇 / RC 下降"
execute on passengers if score @s hpt_SelectedItemSlot matches 1 run title @s actionbar "LC 弱攻撃 / RC 強攻撃"

## かわいいパーティクル
execute on passengers at @s run particle dust 0.424 0.961 1 0.5 ~ ~1 ~ 0.1 0.4 0.1 0 3
execute on passengers at @s run particle dust 0.424 0.961 0.5 0.5 ~ ~1 ~ 0.1 0.4 0.1 0 3

# システム
## 動き
execute on passengers at @s on vehicle as @s store result entity @s Motion[0] double 0.05 run scoreboard players get @p hpt_dolph_ufo_motion_x 
execute on passengers at @s on vehicle as @s store result entity @s Motion[2] double 0.05 run scoreboard players get @p hpt_dolph_ufo_motion_z

## クリック判定
execute on passengers as @s at @s positioned ~ ~ ~ run summon interaction ~ ~-0.5 ~ {Tags:["dlp_ufo_inta"],height:3.5,width:7}
### クリック判定キル(1tickだか2tickだか遅らせている)
scoreboard players add @e[tag=dlp_ufo_inta] hpt_dolph_ufo_motion_x 1

## 技
### ItemSlot 0 の時の(up,down)
execute on passengers if score @s hpt_dolph_rc matches 1 if score @s hpt_SelectedItemSlot matches 0 run function hpt_dolphin_ufo:ufo_act/down
execute on passengers if score @s hpt_dolph_lc matches 1 if score @s hpt_SelectedItemSlot matches 0 run function hpt_dolphin_ufo:ufo_act/up

### ItemSlot 1 の時の(攻撃)
execute on passengers if score @s hpt_dolph_lc matches 1 if score @s hpt_SelectedItemSlot matches 1 run function hpt_dolphin_ufo:ufo_act/weak_attack
#これは時間を送らせている
execute on passengers if score @s hpt_dolph_rc matches 1 if score @s hpt_SelectedItemSlot matches 1 unless entity @e[tag=strong_attack_main,distance=..20] run function hpt_dolphin_ufo:ufo_act/strong_attack

## クリック判定のスコアリセット
execute on passengers run scoreboard players reset @s hpt_dolph_lc
execute on passengers run scoreboard players reset @s hpt_dolph_rc


execute on passengers at @s if entity @e[tag=weak_attack_main] run function hpt_dolphin_ufo:ufo_act/shot/weak_shot_main
execute on passengers at @s if entity @e[tag=strong_attack_main] run function hpt_dolphin_ufo:ufo_act/shot/strong_shot_main
execute at @s unless entity @e[type=player,distance=..3] run tp @e[tag=dlp_ufo_visual,limit=22] ~ -200 ~
execute at @s unless entity @e[type=player,distance=..3] run tp ~ -200 ~
execute at @s unless entity @e[type=player,distance=..3] run kill @e[tag=dlp_ufo_visual,limit=22]
execute at @s unless entity @e[type=player,distance=..3] run kill @s