# === КОНФИГУРАЦИЯ БОССА: ДОН МОТЫГА ===

# 1. ГЛОБАЛЬНЫЕ КОНСТАНТЫ (Пороги здоровья и таймеры)
# Вызывается при загрузке (score_init)
execute unless entity @s run scoreboard players set #don_cfg_hp_ph2 boss_const 65
execute unless entity @s run scoreboard players set #don_cfg_hp_ph3 boss_const 30
execute unless entity @s run scoreboard players set #don_cfg_atk_cd boss_const 60

# 2. БАЗОВЫЕ СТАТЫ (При спавне)
# Вызывается, если у босса есть тег init
execute if entity @s[tag=cnv1_boss_init] run attribute @s generic.max_health base set 100
execute if entity @s[tag=cnv1_boss_init] run attribute @s generic.attack_damage base set 6
execute if entity @s[tag=cnv1_boss_init] run attribute @s generic.movement_speed base set 0.23
execute if entity @s[tag=cnv1_boss_init] run attribute @s generic.follow_range base set 40
execute if entity @s[tag=cnv1_boss_init] run attribute @s generic.knockback_resistance base set 0.5

# 3. СТАТЫ ФАЗЫ 2
# Вызывается из phases.mcfunction
execute if score @s boss_phase matches 2 run attribute @s generic.movement_speed base set 0.35
execute if score @s boss_phase matches 2 run effect give @s minecraft:strength 9999 0 true

# 4. СТАТЫ ФАЗЫ 3
execute if score @s boss_phase matches 3 run attribute @s generic.movement_speed base set 0.50
execute if score @s boss_phase matches 3 run effect give @s minecraft:strength 9999 1 true
