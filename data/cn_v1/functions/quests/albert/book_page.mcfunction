# базовая страница, когда нет активных квестов (по Альберту и т.д.)
execute as @s if score @s q_albert_main matches 0 run give @s minecraft:written_book{title:"Квесты Casinovgorod",author:"Система",pages:['[{"text":"Квесты Casinovgorod\\n\\n"},{"text":"У тебя сейчас нет активных квестов.","color":"gray"}]']}

# страница, когда квест Альберта в процессе
execute as @s if score @s q_albert_main matches 1 run give @s minecraft:written_book{title:"Квесты Casinovgorod",author:"Система",pages:['[{"text":"Квесты Casinovgorod\\n\\n"},{"text":"1) Альберт\\n","bold":true},{"text":"Статус: в процессе\\n","color":"gold"},{"text":"Задача: принести 5 изумрудов и 3 алмаза.","color":"white"}]']}

# страница, когда квест Альберта завершён
execute as @s if score @s q_albert_main matches 2 run give @s minecraft:written_book{title:"Квесты Casinovgorod",author:"Система",pages:['[{"text":"Квесты Casinovgorod\\n\\n"},{"text":"1) Альберт\\n","bold":true},{"text":"Статус: выполнен\\n","color":"green"},{"text":"Ты помог Альберту с первой задачей. Скоро появится новое дело.","color":"white"}]']}
