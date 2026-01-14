extends Label

func _process(delta: float) -> void:
	text = "Cookies:" + str(CookieManager.cookies)
