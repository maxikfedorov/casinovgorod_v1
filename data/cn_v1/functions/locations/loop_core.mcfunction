# === ГЛОБАЛЬНЫЙ ЦИКЛ ЛОКАЦИЙ ===
# Сюда подключаем все триггеры зон

# 1. Арена Дона Мотыги
execute as @e[type=armor_stand,tag=cnv1_arena_trigger] at @s run function cn_v1:locations/boss_arena/logic

# В будущем:
# execute as @e[tag=cnv1_casino_entrance] at @s run function cn_v1:locations/casino/door_logic
