extends Button

var upgrade_price:int = 10
var level:int = 0

func _on_pressed() -> void:
	if CookieManager.cookies >= upgrade_price:
		CookieManager.cookies -= upgrade_price
		upgrade()

func upgrade() -> void:
	level += 1
	upgrade_price = upgrade_price + (5 * level)
	get_parent().get_child(0).text = "AutoClicker LvL " + str(level)
	text = "Upgrade: " + str(upgrade_price)

func _on_timer_timeout() -> void:
	CookieManager.change_cookies(level)
	print("cookie")
