# Альберт
scoreboard objectives add q_albert_stage dummy
scoreboard objectives add q_albert_raw dummy
scoreboard objectives add q_albert_near dummy
scoreboard objectives add q_alb_em dummy
scoreboard objectives add q_alb_di dummy

# Здесь же потом: q_<другой_квест>_stage, q_<npc>_near, глобальные счётчики и т.д.

# Инициализация значений (если нужно)
scoreboard players set @a q_albert_stage 0
scoreboard players set @a q_albert_raw 0
scoreboard players set @a q_albert_near 0
scoreboard players set @a q_alb_em 0
scoreboard players set @a q_alb_di 0
