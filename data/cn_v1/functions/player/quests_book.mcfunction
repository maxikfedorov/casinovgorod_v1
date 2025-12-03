# убираем старую версию журнала, если была
clear @s minecraft:written_book{title:"Квесты Casinovgorod"} 16

# даём квестам шанс записать свои страницы
function cn_v1:quests/albert/book_page
# тут позже:
# function cn_v1:quests/<другой_квест>/book_page

tellraw @s {"text":"[Система] Журнал квестов обновлён.","color":"yellow"}
