# === ПЕРЕХОД В ФАЗУ 2 ===
# Проверяем, что мы все еще в 1 фазе
execute if score @s boss_phase matches 1 run tellraw @a[distance=..40] {"text":"[Дон Мотыга] Сорняки нужно вырывать с корнем!","color":"gold"}
execute if score @s boss_phase matches 1 run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 1 0.5

# БЛОКИРОВКА: Ставим тег, что мы только что сменили фазу, чтобы не сработала 3-я фаза в этом же тике
execute if score @s boss_phase matches 1 run tag @s add temp_phase_lock

# Меняем фазу и обновляем статы
execute if score @s boss_phase matches 1 run scoreboard players set @s boss_phase 2
execute if entity @s[tag=temp_phase_lock] run function cn_v1:enemies/bosses/don_hoe/settings


# === ПЕРЕХОД В ФАЗУ 3 ===
# Добавляем проверку: unless entity @s[tag=temp_phase_lock]
# Это значит: "Выполняй, только если мы НЕ меняли фазу только что"

execute if score @s boss_phase matches 2 unless entity @s[tag=temp_phase_lock] run tellraw @a[distance=..40] {"text":"[Дон Мотыга] Я ВАС ВСЕХ УДОБРЮ!!","color":"dark_red","bold":true}
execute if score @s boss_phase matches 2 unless entity @s[tag=temp_phase_lock] run particle minecraft:explosion ~ ~1 ~ 0.5 0.5 0.5 0.1 10
execute if score @s boss_phase matches 2 unless entity @s[tag=temp_phase_lock] run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 1.5

# Смена фазы
execute if score @s boss_phase matches 2 unless entity @s[tag=temp_phase_lock] run scoreboard players set @s boss_phase 3

# Применение статов (тут тег уже не важен, так как это конец цепочки, но для порядка оставим проверку фазы)
execute if score @s boss_phase matches 3 run function cn_v1:enemies/bosses/don_hoe/settings


# === ОЧИСТКА ===
# Удаляем временный тег в конце тика, чтобы в следующем тике снова можно было менять фазы
tag @s remove temp_phase_lock
