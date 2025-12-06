# 1. Инициализация скорбордов
function cn_v1:system/score_init_global
function cn_v1:npc/albert/score_init
function cn_v1:npc/emelya/score_init
function cn_v1:system/quests/albert_quest_1_score_init
function cn_v1:system/quests/don_hoe_quest_score_init

# 2. Инициализация NPC (спавн Альберта по якорям)
function cn_v1:npc/albert/init
function cn_v1:npc/emelya/init

function cn_v1:enemies/bosses/don_hoe/score_init

# player-инициализация
function cn_v1:player/score_init


# --- МОДУЛЬНАЯ ИНИЦИАЛИЗАЦИЯ КНИГИ ---
# 1. Сбрасываем хранилище (обязательно, чтобы удалить старый мусор)
data merge storage cn_v1:book_templates {pages:{}}

# 2. Вызываем тег, который пройдется по всем квестам и соберет страницы
function #cn_v1:init_book

# 3. (Опционально) Сообщение в консоль для отладки
tellraw @a[tag=admin] {"text":"[System] Book templates loaded.","color":"gray"}

# ==========================================
# DEV: ПОЛНЫЙ СБРОС ПРИ ПЕРЕЗАГРУЗКЕ
# ==========================================

# 1. Сброс квестов у всех игроков
scoreboard players set @a q_albert_main 0
scoreboard players set @a q_albert_stage 0
scoreboard players set @a q_don_hoe 0

# 2. Сброс Арены (вызов существующей функции ресета)
function cn_v1:locations/boss_arena/reset

# 3. Удаление старых книг (чтобы не путались в инвентаре)
clear @a minecraft:written_book{title:"Квесты Casinovgorod"}

# 4. Уведомление
tellraw @a {"text":"[System] RELOAD: Квесты и арена сброшены.","color":"red","bold":true}