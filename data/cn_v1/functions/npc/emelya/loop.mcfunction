# 1) обновляем "сырое" состояние: рядом с Емелей или нет
scoreboard players set @a q_emelya_raw 0
execute as @a at @s if entity @e[type=villager,tag=cnv1_emelya,distance=..2] run scoreboard players set @s q_emelya_raw 1

# 2) переходы raw -> near: 0/2 -> 0, 0->1 (вход)
scoreboard players set @a[scores={q_emelya_raw=0}] q_emelya_near 0
scoreboard players set @a[scores={q_emelya_raw=1,q_emelya_near=0}] q_emelya_near 1

# 3) на входе (near=1) один раз показываем диалог и переводим в near=2
execute as @a[scores={q_emelya_near=1}] at @s run function cn_v1:npc/emelya/dialog
scoreboard players set @a[scores={q_emelya_near=1}] q_emelya_near 2