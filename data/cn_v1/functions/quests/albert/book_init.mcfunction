# АЛЬБЕРТ - Шаблоны страниц

# s0 - Не активен (Оставляем серым)
data modify storage cn_v1:book_templates pages.albert.s0 set value '{"text":"Альберт — Квест 1\\n\\nСтатус: Не активен\\nЗадача: Найди Альберта в казино.","color":"gray"}'

# s1 - Активен (МЕНЯЕМ НА DARK_RED)
data modify storage cn_v1:book_templates pages.albert.s1 set value '{"text":"Альберт — Квест 1\\n\\nСтатус: АКТИВЕН\\nЗадача: 5 изумрудов, 3 алмаза.\\n\\nПринеси их скорее!","color":"dark_red"}'

# s2 - Выполнен (МЕНЯЕМ НА DARK_GREEN)
data modify storage cn_v1:book_templates pages.albert.s2 set value '{"text":"Альберт — Квест 1\\n\\nСтатус: ВЫПОЛНЕН\\nТы помог Альберту. Жди новых поручений.","color":"dark_green"}'
