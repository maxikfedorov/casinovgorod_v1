# === САМОВОССТАНОВЛЕНИЕ СКОРБОРДОВ ===
execute unless score @s arena_state matches 0.. run scoreboard players set @s arena_state 0
execute unless score @s arena_timer matches 0.. run scoreboard players set @s arena_timer 0

# ==========================================
# ВИЗУАЛИЗАЦИЯ (АДАПТИВНАЯ)
# ==========================================

# Состояние 0 (ОЖИДАНИЕ):
# Если рядом игрок с АКТИВНЫМ квестом (q_don_hoe=1) -> Зеленые
execute if score @s arena_state matches 0 if entity @a[distance=..15,scores={q_don_hoe=1}] run particle minecraft:composter ~ ~1.5 ~ 0.3 0.3 0.3 0 3
# Если квеста нет или выполнен -> Серый дым
execute if score @s arena_state matches 0 unless entity @a[distance=..15,scores={q_don_hoe=1}] run particle minecraft:smoke ~ ~1 ~ 0.1 0.1 0.1 0.01 1

# Состояние 1 (ПРИЗЫВ): Искры лавы
execute if score @s arena_state matches 1 run particle minecraft:lava ~ ~1.5 ~ 0.5 0.5 0.5 0 2

# Состояние 2 (БОЙ): Красный столб
execute if score @s arena_state matches 2 run particle minecraft:dust 1 0 0 1 ~ ~1 ~ 0.2 1 0.2 1 5

# Состояние 3 (ЗАЧИЩЕНО): Серый мицелий
execute if score @s arena_state matches 3 run particle minecraft:mycelium ~ ~0.2 ~ 1 0 1 0.05 15


# ==========================================
# ЛОГИКА ПЕРЕХОДОВ
# ==========================================

# 0 -> 1: АКТИВАЦИЯ
# Строгая проверка: только если есть квест (q_don_hoe=1)
# Мы убрали tellraw (Интуиция), теперь если квеста нет - просто ничего не происходит (кроме дыма)
execute if score @s arena_state matches 0 if entity @a[distance=..8,gamemode=!spectator,scores={q_don_hoe=1}] run scoreboard players set @s arena_state 1


# 1 -> 2: ТАЙМЕР ОТСЧЕТА
execute if score @s arena_state matches 1 run scoreboard players add @s arena_timer 1

# Отсчет в чат (ОСТАВЛЯЕМ, это нужно для геймплея)
execute if score @s arena_state matches 1 if score @s arena_timer matches 1 run tellraw @a[distance=..20] {"text":"[Арена] Босс появится через 3...","color":"gold"}
execute if score @s arena_state matches 1 if score @s arena_timer matches 1 run playsound minecraft:block.note_block.hat master @a[distance=..20] ~ ~ ~ 1 1
execute if score @s arena_state matches 1 if score @s arena_timer matches 20 run tellraw @a[distance=..20] {"text":"[Арена] 2...","color":"gold"}
execute if score @s arena_state matches 1 if score @s arena_timer matches 20 run playsound minecraft:block.note_block.hat master @a[distance=..20] ~ ~ ~ 1 1
execute if score @s arena_state matches 1 if score @s arena_timer matches 40 run tellraw @a[distance=..20] {"text":"[Арена] 1...","color":"gold"}
execute if score @s arena_state matches 1 if score @s arena_timer matches 40 run playsound minecraft:block.note_block.hat master @a[distance=..20] ~ ~ ~ 1 1

# ФИНАЛ ОТСЧЕТА: Спавн босса
execute if score @s arena_state matches 1 if score @s arena_timer matches 60 run function cn_v1:locations/boss_arena/spawn_event


# 2 -> 3: ПРОВЕРКА ПОБЕДЫ
execute if score @s arena_state matches 2 unless entity @e[tag=cnv1_don_hoe,distance=..30] run scoreboard players set @s arena_state 3