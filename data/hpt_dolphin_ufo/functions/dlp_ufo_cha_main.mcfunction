# 見た目

## パーティクルを出します
particle poof ~ ~ ~ 0.1 0.1 0.1 0 5
## 文字出します
summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:1b,Duration:2,CustomName:'{"text":"Ride Here!","color":"green","bold":true,"italic":false}'}
# 機能面
## 乗ったらufoに乗るようにする
execute on passengers run function hpt_.dolphin_ufo:summon_ufo
## 壊す時用
execute if block ~ ~-1 ~ air run tp @s ~ -200 ~
execute if block ~ ~-1 ~ air run kill @s