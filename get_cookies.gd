extends Button

func _on_pressed() -> void:
	CookieManager.change_cookies(CookieManager.cookie_per_click)
