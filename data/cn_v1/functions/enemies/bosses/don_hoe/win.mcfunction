# 1. Сообщение в чат (Предсмертный хрип)
tellraw @a {"text":"[Дон Мотыга] Кхх... Мои помидоры... завянут...","color":"dark_red","italic":true}

# 2. Победный Title
title @a title {"text":"ПОБЕДА!","color":"gold","bold":true}
title @a subtitle {"text":"Дон Мотыга повержен","color":"yellow"}

# 3. Звук победы (UI Toast)
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1

# ОБНОВЛЕНИЕ КВЕСТА
# Всем игрокам в радиусе 60 блоков, у кого был квест (1), ставим (2) - Выполнен
scoreboard players set @a[distance=..60,scores={q_don_hoe=1}] q_don_hoe 2

# Обновляем книгу квестов (чтобы там появилась галочка или новый текст)
execute as @a[distance=..60,scores={q_don_hoe=2}] run function cn_v1:player/quests_book_update

# 4. Сбрасываем статус боя и убираем бар
scoreboard players set #don_status boss_phase 0
bossbar set cnv1:don_hoe visible false
