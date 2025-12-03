function cn_v1:ui/dialog_preamble

tellraw @p {"text":"[Емеля] Держи журнал квестов, пригодится.","color":"gold"}
tellraw @p [{"text":"[Открыть журнал квестов]","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function cn_v1:player/quests_book"}}]
