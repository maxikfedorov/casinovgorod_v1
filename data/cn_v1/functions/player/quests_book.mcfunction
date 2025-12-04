# 1. Подготовка "верстака" (Бочка на 0 250 0)
# Используем replace, чтобы не было звуков, если там что-то осталось
setblock 0 250 0 minecraft:barrel replace
data modify block 0 250 0 Items set value []

# 2. Создаем базу книги (Слот 0)
data modify block 0 250 0 Items append value {Slot:0b, id:"minecraft:written_book", Count:1b, tag:{title:"Квесты Casinovgorod", author:"Система", pages:[]}}

# 3. Сборка страниц (тут всё у тебя работает отлично)
data modify block 0 250 0 Items[0].tag.pages append from storage cn_v1:book_templates pages.index

# АЛЬБЕРТ
execute if score @s q_albert_main matches 0 run data modify block 0 250 0 Items[0].tag.pages append from storage cn_v1:book_templates pages.albert.s0
execute if score @s q_albert_main matches 1 run data modify block 0 250 0 Items[0].tag.pages append from storage cn_v1:book_templates pages.albert.s1
execute if score @s q_albert_main matches 2.. run data modify block 0 250 0 Items[0].tag.pages append from storage cn_v1:book_templates pages.albert.s2

# ЕМЕЛЯ
data modify block 0 250 0 Items[0].tag.pages append from storage cn_v1:book_templates pages.emelya.s0

# 4. ВЫДАЧА (Исправленная логика)
# Удаляем старую книгу у игрока
clear @s minecraft:written_book{title:"Квесты Casinovgorod"}

# Спавним предмет ПРЯМО В ИГРОКЕ (at @s ~ ~ ~)
# PickupDelay:0s означает, что он подберется мгновенно, в тот же тик
summon item ~ ~ ~ {Tags:["cn_temp_book"], PickupDelay:0s, Item:{id:"minecraft:written_book", Count:1b}}

# Копируем ТЕГ (содержимое) книги из бочки в этот предмет на земле
# Обрати внимание: мы берем Items[{Slot:0b}].tag и кладем в Item.tag
data modify entity @e[type=item,tag=cn_temp_book,limit=1,sort=nearest] Item.tag set from block 0 250 0 Items[{Slot:0b}].tag

# 5. ЧИСТКА
# Важный момент: replace удаляет блок БЕЗ выпадения дропа и звуков
setblock 0 250 0 air replace

# Удаляем тег с предмета (технический), чтобы не засорять энтити (опционально, так как он подберется)
# Но для надежности лучше телепортировать предмет точно в игрока еще раз
tp @e[type=item,tag=cn_temp_book] @s

# Сообщение
tellraw @s {"text":"[Система] Журнал квестов обновлён.","color":"yellow"}
