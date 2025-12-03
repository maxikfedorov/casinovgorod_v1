# награда только если стадия 1
execute as @p if score @s q_albert_stage matches 1 run clear @s minecraft:emerald 5
execute as @p if score @s q_albert_stage matches 1 run clear @s minecraft:diamond 3

execute as @p if score @s q_albert_stage matches 1 run xp add @s 100 points
execute as @p if score @s q_albert_stage matches 1 run tellraw @s {"text":"[Альберт] Отлично! Вот твоя награда: 100 опыта.","color":"green"}
execute as @p if score @s q_albert_stage matches 1 run scoreboard players set @s q_albert_stage 2
