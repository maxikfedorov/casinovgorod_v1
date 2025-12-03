execute as @p if score @s q_albert_stage matches 0 run function cn_v1:quests/albert/offer
execute as @p if score @s q_albert_stage matches 1 run function cn_v1:quests/albert/remind
execute as @p if score @s q_albert_stage matches 2 run tellraw @s {"text":"[Альберт] Спасибо, всё уже сделано.","color":"gray"}
