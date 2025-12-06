# === ОТКЛЮЧЕНИЕ ОТЛАДКИ СТОЕК ===

# 1. Декор Емели -> Скрываем обратно
execute as @e[type=armor_stand,tag=cnv1_emelya_deco] run data merge entity @s {Invisible:1b,Glowing:0b}

# 2. Якоря -> Скрываем обратно
execute as @e[type=armor_stand,tag=cnv1_anchor_emelya] run data merge entity @s {Invisible:1b,Glowing:0b}
execute as @e[type=armor_stand,tag=cnv1_anchor_albert] run data merge entity @s {Invisible:1b,Glowing:0b}

# Сообщение админу
tellraw @s {"text":"[Debug] Стойки: СКРЫТЫ","color":"red"}
