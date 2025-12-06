playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 2
# Было ^ ^1.5 ^1 -> стало ^ ^1.1 ^1 (уровень груди)
summon armor_stand ^ ^0.5 ^1 {Tags:["cnv1_projectile","cnv1_hoe_spin"],Marker:1b,Invisible:1b,NoGravity:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:wooden_hoe",Count:1b}],Pose:{Head:[0f,0f,0f]}}
tellraw @a[distance=..20] {"text":"*Вжух!*","color":"gray"}
