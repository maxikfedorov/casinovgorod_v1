# награда только если стадия 1
execute as @p if score @s q_albert_stage matches 1 run clear @s minecraft:emerald 5
execute as @p if score @s q_albert_stage matches 1 run clear @s minecraft:diamond 3

execute as @p if score @s q_albert_stage matches 1 run xp add @s 100 points
execute as @p if score @s q_albert_stage matches 1 run tellraw @s {"text":"[Альберт] Отлично! Вот твоя награда: 100 опыта.","color":"green"}

execute as @p if score @s q_albert_stage matches 1 run scoreboard players set @s q_albert_stage 2
execute as @p if score @s q_albert_main matches 1 run scoreboard players set @s q_albert_main 2
execute as @p run function cn_v1:player/quests_book_update


# Заглушка второго квеста (если хочешь показать игроку, что дальше что-то будет)
execute as @p if score @s q_albert_main matches 2 run function cn_v1:quests/albert2/start