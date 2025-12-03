# если квест Альберта ещё не взят — ничего в книгу не пишем

# если квест Альберта в процессе (main = 1) — добавляем ОДНУ страницу (строка с \n)
execute as @s if score @s q_albert_main matches 1 run data modify storage cn_v1:quests_book pages append value '{"text":"1) Альберт\\nСтатус: в процессе\\nЗадача: принести 5 изумрудов и 3 алмаза.","color":"white"}'

# если квест Альберта завершён (main = 2) — другая страница
execute as @s if score @s q_albert_main matches 2 run data modify storage cn_v1:quests_book pages append value '{"text":"1) Альберт\\nСтатус: выполнен\\nТы помог Альберту с первой задачей. Скоро появится новое дело.","color":"white"}'
