# 1) обнуляем временные счётчики
scoreboard players set @s q_alb_em 0
scoreboard players set @s q_alb_di 0

# 2) считаем примерное количество в одном стеке
execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald",Count:5b}]}] run scoreboard players set @s q_alb_em 5
execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald",Count:4b}]}] run scoreboard players set @s q_alb_em 4
execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald",Count:3b}]}] run scoreboard players set @s q_alb_em 3
execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald",Count:2b}]}] run scoreboard players set @s q_alb_em 2
execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald",Count:1b}]}] run scoreboard players set @s q_alb_em 1

execute if entity @s[nbt={Inventory:[{id:"minecraft:diamond",Count:3b}]}] run scoreboard players set @s q_alb_di 3
execute if entity @s[nbt={Inventory:[{id:"minecraft:diamond",Count:2b}]}] run scoreboard players set @s q_alb_di 2
execute if entity @s[nbt={Inventory:[{id:"minecraft:diamond",Count:1b}]}] run scoreboard players set @s q_alb_di 1

# 3) проверки
execute unless score @s q_alb_em matches 5 run tellraw @s {"text":"[Альберт] Мне нужно ровно 5 изумрудов в одном стеке.","color":"red"}
execute unless score @s q_alb_di matches 3 run tellraw @s {"text":"[Альберт] Мне нужно ровно 3 алмаза в одном стеке.","color":"red"}

# 4) если всё ок — снимаем и завершаем
execute if score @s q_alb_em matches 5 if score @s q_alb_di matches 3 run clear @s minecraft:emerald 5
execute if score @s q_alb_em matches 5 if score @s q_alb_di matches 3 run clear @s minecraft:diamond 3
execute if score @s q_alb_em matches 5 if score @s q_alb_di matches 3 run function cn_v1:quests/albert/complete
