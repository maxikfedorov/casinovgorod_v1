summon zombie ~ ~ ~ {DeathLootTable:"cn_v1:entities/don_hoe",Tags:["cnv1_boss","cnv1_don_hoe","cnv1_boss_init"],PersistenceRequired:1b,CustomName:'{"text":"Дон Мотыга","color":"dark_red","bold":true}',HandItems:[{id:"minecraft:wooden_hoe",Count:1b,tag:{Enchantments:[{id:"sharpness",lvl:3}]}},{id:"minecraft:wooden_hoe",Count:1b}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3949738}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"MHF_Cactus"}}]}

# 2. Применяем настройки (тут MaxHealth становится 100, но Health все еще 20)
execute as @e[tag=cnv1_boss_init] run function cn_v1:enemies/bosses/don_hoe/settings

# 3. ЖЕСТКОЕ ЛЕЧЕНИЕ (Best Practice)
# Мы берем значение атрибута max_health (через get) и записываем его прямо в NBT Health
# Это работает мгновенно и без партиклов
execute as @e[tag=cnv1_boss_init] store result entity @s Health float 1 run attribute @s minecraft:generic.max_health base get

# 4. Остальная инициализация
bossbar set cnv1:don_hoe value 100
bossbar set cnv1:don_hoe visible true
scoreboard players set @e[tag=cnv1_boss_init,limit=1] boss_phase 1
# Берем кулдаун из конфига
scoreboard players operation @e[tag=cnv1_boss_init,limit=1] boss_atk_cd = #don_cfg_atk_cd boss_const
# Удаляем тег инициализации
tag @e[tag=cnv1_boss_init] remove cnv1_boss_init

# 5. Старт боя
scoreboard players set #don_status boss_phase 1
title @a[distance=..40] title {"text":"БОСС: ДОН МОТЫГА","color":"dark_red","bold":true}
title @a[distance=..40] subtitle {"text":"Защищай свои грядки!","color":"gold"}
playsound minecraft:entity.wither.spawn master @a[distance=..40] ~ ~ ~ 1 0.5
