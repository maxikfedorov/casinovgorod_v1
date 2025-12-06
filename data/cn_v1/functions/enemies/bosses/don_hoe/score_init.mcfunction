scoreboard objectives add boss_hp dummy
scoreboard objectives add boss_phase dummy
scoreboard objectives add boss_atk_cd dummy
# Новый объектив для хранения настроек
scoreboard objectives add boss_const dummy
bossbar add cnv1:don_hoe "Дон Мотыга"
bossbar set cnv1:don_hoe color red
bossbar set cnv1:don_hoe style notched_10
bossbar set cnv1:don_hoe visible false
# Загружаем цифры из конфига
function cn_v1:enemies/bosses/don_hoe/settings
