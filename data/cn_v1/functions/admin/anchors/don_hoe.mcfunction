# Удаляем старый якорь босса
kill @e[type=armor_stand,tag=cnv1_anchor_don_hoe]

# Спавним якорь
summon armor_stand ~ ~ ~ {Tags:["cnv1_anchor","cnv1_anchor_don_hoe"],Marker:1b,Invisible:1b,NoGravity:1b,CustomName:'{"text":"[ANCHOR] Don Hoe Arena","color":"red"}',CustomNameVisible:1b}

# Эффекты
particle minecraft:flame ~ ~1 ~ 0.2 0.5 0.2 0.05 20
tellraw @s {"text":"[Admin] Точка спавна Дона Мотыги установлена!","color":"red"}
