# Удаляем старый якорь Альберта (если он должен быть только один в мире)
kill @e[type=armor_stand,tag=cnv1_anchor_albert]

# Спавним новый якорь в текущей позиции исполнителя
# Сохраняем Rotation (поворот головы), чтобы NPC смотрел туда же, куда и вы
summon armor_stand ~ ~ ~ {Tags:["cnv1_anchor","cnv1_anchor_albert"],Marker:1b,Invisible:1b,NoGravity:1b,CustomName:'{"text":"[ANCHOR] Albert","color":"gold"}',CustomNameVisible:1b}

# Визуальный эффект для подтверждения
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 10
tellraw @s {"text":"[Admin] Точка спавна Альберта установлена!","color":"green"}
