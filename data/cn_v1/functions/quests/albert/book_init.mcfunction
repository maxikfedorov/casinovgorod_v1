# АЛЬБЕРТ - Шаблоны страниц
# Мы пишем прямо в pages.albert, не трогая остальные квесты

# s0 - Не активен
data modify storage cn_v1:book_templates pages.albert.s0 set value '{"text":"Альберт — Квест 1\\n\\nСтатус: Не активен\\nЗадача: Найди Альберта в казино.","color":"gray"}'

# s1 - Активен
data modify storage cn_v1:book_templates pages.albert.s1 set value '{"text":"Альберт — Квест 1\\n\\nСтатус: Активен\\nЗадача: 5 изумрудов, 3 алмаза.\\nНаграда: Респект.","color":"dark_green"}'

# s2 - Выполнен
data modify storage cn_v1:book_templates pages.albert.s2 set value '{"text":"Альберт — Квест 1\\n\\nСтатус: Выполнен\\nТы помог Альберту.","color":"dark_gray"}'
