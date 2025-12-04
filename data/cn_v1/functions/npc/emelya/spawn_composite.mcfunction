# ==========================================
# СЛОЙ 1: ХИТБОКС (ЖИТЕЛЬ)
# ==========================================
# Убрали Invulnerable, иногда он мешает в креативе проверять хитбоксы.
# Если F3+B всё равно пусто — значит, сложность Peaceful (Мирная) удаляет враждебных мобов?
# Нет, жители мирные. Значит просто баг спавна. Попробуем простейшего жителя.
summon villager ~ ~ ~ {Tags:["cnv1_emelya"],NoAI:1b,Silent:1b,PersistenceRequired:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b}]}

# ==========================================
# СЛОЙ 2: ТЕЛО (СМОКИНГ + ПОЗА)
# ==========================================
summon armor_stand ~ ~ ~ {Tags:["cnv1_emelya_deco"],Marker:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,Rotation:[180f,0f],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:1908001}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:1908001}}},{id:"minecraft:sea_lantern",Count:1b}],HandItems:[{id:"minecraft:end_rod",Count:1b},{id:"minecraft:totem_of_undying",Count:1b}],Pose:{LeftArm:[-20f,0f,-30f],RightArm:[-10f,0f,10f],Head:[0f,0f,0f]}}

# ==========================================
# СЛОЙ 3: ШЛЕМ (ВИЗУАЛ ГОЛОВЫ)
# ==========================================
summon armor_stand ~ ~0.05 ~ {Tags:["cnv1_emelya_deco"],Marker:1b,Invisible:1b,NoGravity:1b,Rotation:[180f,0f],ArmorItems:[{},{},{},{id:"minecraft:golden_helmet",Count:1b}]}

# ==========================================
# СЛОЙ 4: ИМЯ (ЛЕТАЕТ ВЫСОКО)
# ==========================================
# Мы поднимаем эту стойку на 2 блока вверх (~ ~2.3 ~).
# У неё нет ничего, кроме имени.
summon armor_stand ~ ~2 ~ {Tags:["cnv1_emelya_deco"],Marker:1b,Invisible:1b,NoGravity:1b,CustomName:'{"text":"Емеля","color":"gold","bold":true}',CustomNameVisible:1b}

# ==========================================
# СЛОЙ 5: ОРБИТЫ
# ==========================================
summon armor_stand ~0.6 ~0.8 ~0.4 {Tags:["cnv1_emelya_deco"],Marker:1b,Invisible:1b,NoGravity:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:emerald_block",Count:1b}],Rotation:[0f,0f],Pose:{Head:[0f,0f,20f]}}
summon armor_stand ~-0.6 ~1.2 ~0.4 {Tags:["cnv1_emelya_deco"],Marker:1b,Invisible:1b,NoGravity:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_block",Count:1b}],Rotation:[0f,0f],Pose:{Head:[0f,0f,-20f]}}
