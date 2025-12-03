# игрок нажал [Взять квест]
scoreboard players set @p q_albert_stage 1
tellraw @p {"text":"[Альберт] Как будут 5 изумрудов и 3 алмаза — возвращайся ко мне.","color":"gold"}
tellraw @p [{"text":"[Проверить предметы]","color":"green","bold":true,  "clickEvent":{"action":"run_command","value":"/function cn_v1:quests/albert/check_items"}}]
