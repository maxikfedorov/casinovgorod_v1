execute store result bossbar cnv1:don_hoe value run data get entity @s Health
execute store result score @s boss_hp run data get entity @s Health
bossbar set cnv1:don_hoe players @a[distance=..40]

# Сравнение с конфигом (< 65)
execute if score @s boss_phase matches 1 if score @s boss_hp < #don_cfg_hp_ph2 boss_const run function cn_v1:enemies/bosses/don_hoe/phases

# Сравнение с конфигом (< 30)
execute if score @s boss_phase matches 2 if score @s boss_hp < #don_cfg_hp_ph3 boss_const run function cn_v1:enemies/bosses/don_hoe/phases

function cn_v1:enemies/bosses/don_hoe/effects

# Таймер атаки
execute if score @s boss_phase matches 2.. run scoreboard players remove @s boss_atk_cd 1
execute if score @s boss_phase matches 2.. if score @s boss_atk_cd matches ..0 run function cn_v1:enemies/bosses/don_hoe/attack_throw
# Сброс таймера из конфига
execute if score @s boss_phase matches 2.. if score @s boss_atk_cd matches ..0 run scoreboard players operation @s boss_atk_cd = #don_cfg_atk_cd boss_const
