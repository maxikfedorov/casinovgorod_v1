# === ВНЕШНИЙ ЦИКЛ: ДОН МОТЫГА ===

# 1. Тик самого босса (Находим и делегируем)
execute as @e[type=zombie,tag=cnv1_don_hoe] at @s run function cn_v1:enemies/bosses/don_hoe/tick

# 2. Тик его снарядов (Мотыги-сюрикены)
# Они специфичны для этого босса, поэтому обрабатываем их здесь
execute as @e[tag=cnv1_hoe_spin] at @s run function cn_v1:enemies/bosses/don_hoe/projectile_tick

# 3. Глобальная проверка состояния (Смерть / Победа)
# Если статус "Бой идет" (1), но босса физически нет -> Win
execute if score #don_status boss_phase matches 1 unless entity @e[type=zombie,tag=cnv1_don_hoe] run function cn_v1:enemies/bosses/don_hoe/win
