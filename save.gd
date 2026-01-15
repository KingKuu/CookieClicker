extends Button

func _on_pressed() -> void:
	CookieManager.save_game()
