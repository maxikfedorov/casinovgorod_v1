# Проверяем, есть ли у игрока книга вообще (чтобы не спамить, если он её выбросил)
# Если у игрока есть книга с таким названием, обновляем её.
execute if entity @s[nbt={Inventory:[{tag:{title:"Квесты Casinovgorod"}}]}] run function cn_v1:player/quests_book
