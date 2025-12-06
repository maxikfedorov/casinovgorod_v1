# === ВКЛЮЧЕНИЕ ОТЛАДКИ СТОЕК ===

# 1. Декор Емели (части тела)
# Делаем видимыми и светящимися
execute as @e[type=armor_stand,tag=cnv1_emelya_deco] run data merge entity @s {Invisible:0b,Glowing:1b}

# 2. Якоря (технические точки спавна)
# Якоря Альберта и Емели
execute as @e[type=armor_stand,tag=cnv1_anchor_emelya] run data merge entity @s {Invisible:0b,Glowing:1b}
execute as @e[type=armor_stand,tag=cnv1_anchor_albert] run data merge entity @s {Invisible:0b,Glowing:1b}

# Сообщение админу
tellraw @s {"text":"[Debug] Стойки: ВИДИМЫ (Invisible:0, Glowing:1)","color":"green"}
