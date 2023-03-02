## しょり
# 入手したチェスト消す
clear @s chest 1
# クラフトとクラフト検知に使ったレシピ＆実績消す
recipe take @s hpt_dolphin_ufo:dlp_ufo
advancement revoke @s only hpt_dolphin_ufo:craft/dlp_ufo
# アイテム入手 (アイテム満タンだとだめだからsummon)
summon item ~ ~ ~ {PickupDelay:0,Item:{id:"minecraft:evoker_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"DLP_UFO_SUMMONER","color":"aqua","italic":false}',Lore:['{"text":"このアイテムを使うと","color":"white","italic":false}','{"text":"不思議なUFOを出すことができる。","color":"#D3A1FF","italic":false}']},HideFlags:127,EntityTag:{id:"minecraft:pig",Silent:1b,NoAI:1b,Saddle:1b,Tags:["dlp_ufo_cha"],CustomName:'{"text":"Grumm"}',ActiveEffects:[{Id:14,Amplifier:1b,Duration:20000000,ShowParticles:0b}]}}}}