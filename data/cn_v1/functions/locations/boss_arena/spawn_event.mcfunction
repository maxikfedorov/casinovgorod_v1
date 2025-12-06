# 1. Спавним босса ПРЯМО ЗДЕСЬ (на месте маркера арены)
execute at @s run function cn_v1:enemies/bosses/don_hoe/summon

# 2. Переключаем состояние на "Бой идет" (State 2)
scoreboard players set @s arena_state 2
scoreboard players set @s arena_timer 0

# 3. Эффект появления
playsound minecraft:entity.wither.spawn master @a[distance=..30] ~ ~ ~ 1 0.8
particle minecraft:explosion_emitter ~ ~1 ~ 1 0 0 0 1
