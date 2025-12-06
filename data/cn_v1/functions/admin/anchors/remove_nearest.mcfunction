# Убиваем ближайший армор-стенд с тегом cnv1_anchor
kill @e[type=armor_stand,tag=cnv1_anchor,distance=..2,limit=1,sort=nearest]

# Сообщение
tellraw @s {"text":"[Admin] Ближайший якорь удален.","color":"gray"}
particle minecraft:smoke ~ ~0.5 ~ 0.2 0.2 0.2 0 10
