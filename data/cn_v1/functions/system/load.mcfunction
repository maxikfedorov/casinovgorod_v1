# 1. Инициализация скорбордов, связанных с Альбертом
function cn_v1:npc/albert/score_init
function cn_v1:npc/emelya/score_init
function cn_v1:system/quests/albert_quest_1_score_init

# 2. Инициализация NPC (спавн Альберта по якорям)
function cn_v1:npc/albert/init
function cn_v1:npc/emelya/init

# player-инициализация
function cn_v1:player/score_init


# --- МОДУЛЬНАЯ ИНИЦИАЛИЗАЦИЯ КНИГИ ---
# 1. Сбрасываем хранилище (обязательно, чтобы удалить старый мусор)
data merge storage cn_v1:book_templates {pages:{}}

# 2. Вызываем тег, который пройдется по всем квестам и соберет страницы
function #cn_v1:init_book

# 3. (Опционально) Сообщение в консоль для отладки
tellraw @a[tag=admin] {"text":"[System] Book templates loaded.","color":"gray"}