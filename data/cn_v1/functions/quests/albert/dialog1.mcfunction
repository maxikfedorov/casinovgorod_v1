scoreboard players set @p q_albert_stage 1
scoreboard players set @p q_albert_main 1
execute as @p run function cn_v1:player/quests_book_update

tellraw @p {"text":"[Альберт] Как будут 5 изумрудов и 3 алмаза — возвращайся ко мне.","color":"gold"}
tellraw @p [{"text":"[Проверить предметы]","color":"green","bold":true,  "clickEvent":{"action":"run_command","value":"/function cn_v1:quests/albert/check_items"}}]
