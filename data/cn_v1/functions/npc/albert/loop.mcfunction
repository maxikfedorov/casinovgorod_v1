# 1) Обновляем "сырое" состояние: 0 — далеко, 1 — рядом

# по умолчанию всем ставим 0
scoreboard players set @a q_albert_raw 0

# тем, кто сейчас в радиусе 2 блоков от Альберта — ставим 1
execute as @a at @s if entity @e[type=villager,tag=cnv1_albert,distance=..2] run scoreboard players set @s q_albert_raw 1

# 2) Определяем момент входа: было 0 (или 2), стало 1 → считаем, что игрок вошёл

# сбрасываем q_albert_near тем, кто сейчас далеко (raw=0)
scoreboard players set @a[scores={q_albert_raw=0}] q_albert_near 0

# тем, у кого raw=1 и текущий near=0 → ставим near=1 (событие "вход")
scoreboard players set @a[scores={q_albert_raw=1,q_albert_near=0}] q_albert_near 1

# 3) Показываем диалог только при near=1 и сразу переводим в 2 (чтобы не спамить)

execute as @a[scores={q_albert_near=1}] at @s run function cn_v1:npc/albert/dialog_main
scoreboard players set @a[scores={q_albert_near=1}] q_albert_near 2
