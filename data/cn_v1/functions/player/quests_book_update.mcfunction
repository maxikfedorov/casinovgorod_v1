# обновляем книгу только если она уже есть у игрока
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:written_book",tag:{title:"Квесты Casinovgorod"}}]}] run function cn_v1:player/quests_book
