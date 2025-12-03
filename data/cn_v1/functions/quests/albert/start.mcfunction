# старт показываем ТОЛЬКО один раз — при стадии 0
execute as @p if score @s q_albert_stage matches 0 run tellraw @s {"text":"[Альберт] Привет! Принеси мне 5 изумрудов и 3 алмаза.","color":"gold"}
execute as @p if score @s q_albert_stage matches 0 run tellraw @s [{"text":"[Взять квест]","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function cn_v1:quests/albert/dialog1"}}]
execute as @p if score @s q_albert_stage matches 0 run scoreboard players set @s q_albert_stage 1
