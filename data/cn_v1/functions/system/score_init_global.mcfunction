# Основные игровые скорборды
scoreboard objectives add q_book_quests trigger
scoreboard objectives add dbg_health health

# Скорборды АРЕНЫ (Если их нет - они создадутся)
scoreboard objectives add arena_timer dummy
scoreboard objectives add arena_state dummy
scoreboard objectives add arena_msg_cd dummy

# Сообщение в консоль для проверки (видит только админ)
tellraw @a[tag=admin] {"text":"[System] Global Scoreboards initialized.","color":"gray"}
