# Убиваем основу (Жителя)
kill @e[type=villager,tag=cnv1_emelya]

# Убиваем весь декор (Стойки: тело, голову, летающие блоки)
# Поскольку мы всем им дали один тег cnv1_emelya_deco, они умрут разом
kill @e[type=armor_stand,tag=cnv1_emelya_deco]

# На всякий случай убиваем дроп, если вдруг стойки успели дропнуть броню при смерти
# (Хотя с Marker:1b они не должны дропать, но для надежности)
kill @e[type=item,distance=..5,nbt={Item:{id:"minecraft:golden_helmet"}}]
