extends Node

const SAVE_PATH := "user://savegame.tres"

var cookies:int = 0

var cookie_per_click:int = 1

var save_data: SaveData

func change_cookies(amount:int) -> void:
	cookies += amount

func save_game() -> void:
	if save_data == null:
		save_data = SaveData.new()
	
	var error = ResourceSaver.save(save_data, SAVE_PATH)
	if error != OK:
		push_error("Failed to save game: " + str(error))
		return

func load_game() -> void:
	pass
