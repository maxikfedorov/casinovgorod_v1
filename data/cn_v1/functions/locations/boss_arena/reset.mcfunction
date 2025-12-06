# FORCE RESET (Админская команда)
scoreboard players set @e[tag=cnv1_arena_trigger] arena_state 0
scoreboard players set @e[tag=cnv1_arena_trigger] arena_timer 0
tellraw @a[distance=..40] {"text":"[Admin] Арена принудительно перезапущена!","color":"red"}
