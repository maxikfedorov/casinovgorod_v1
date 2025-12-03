# на всякий случай каждый тик включаем триггер всем игрокам
scoreboard players enable @a q_book_quests

# обработка запроса книги
execute as @a[scores={q_book_quests=1..}] run function cn_v1:player/quests_book
scoreboard players set @a[scores={q_book_quests=1..}] q_book_quests 0
