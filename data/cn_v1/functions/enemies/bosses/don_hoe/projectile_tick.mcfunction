tp @s ^ ^ ^0.7
particle minecraft:crit ~ ~0.5 ~ 0.1 0.1 0.1 0 2
# Бьем только игроков (@a), исключая мобов
execute as @a[distance=..1.5,gamemode=!creative] run effect give @s minecraft:instant_damage 1 0 true
execute at @a[distance=..1.5,gamemode=!creative] run particle minecraft:block redstone_block ~ ~1 ~ 0.5 0.5 0.5 1 20
execute if entity @a[distance=..1.5,gamemode=!creative] run kill @s
execute unless block ~ ~0.5 ~ air run particle minecraft:cloud ~ ~0.5 ~ 0 0 0 0.1 10
execute unless block ~ ~0.5 ~ air run kill @s
execute at @s unless entity @e[tag=cnv1_don_hoe,distance=..30] run kill @s
