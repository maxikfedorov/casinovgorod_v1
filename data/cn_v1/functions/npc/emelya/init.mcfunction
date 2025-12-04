# Проверяем якорь и отсутствие жителя
execute as @e[type=armor_stand,tag=cnv1_anchor_emelya] at @s unless entity @e[type=villager,tag=cnv1_emelya,distance=..1] run function cn_v1:npc/emelya/spawn_composite
