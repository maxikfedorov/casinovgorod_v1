# работаем только если квест на стадии 1
execute as @p if score @s q_albert_stage matches 1 run function cn_v1:quests/albert/check_items_inner
