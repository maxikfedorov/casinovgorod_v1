# Удаляем старый триггер (чтобы не дублировать)
kill @e[type=armor_stand,tag=cnv1_arena_trigger]

# Спавним скрытую стойку-контроллер
summon armor_stand ~ ~ ~ {Tags:["cnv1_anchor","cnv1_arena_trigger"],Marker:1b,Invisible:1b,NoGravity:1b,CustomName:'{"text":"[ARENA LOGIC]","color":"red"}',CustomNameVisible:1b}

# Сбрасываем её параметры
scoreboard players set @e[tag=cnv1_arena_trigger,limit=1] arena_state 0
scoreboard players set @e[tag=cnv1_arena_trigger,limit=1] arena_timer 0

tellraw @s {"text":"[Arena] Логический центр арены установлен!","color":"green"}
# Показываем частицы, чтобы видеть радиус (визуально для админа)
particle minecraft:dust 1 0 0 1 ~ ~ ~ 10 0 10 1 100
