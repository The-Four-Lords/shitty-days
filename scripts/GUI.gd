extends CanvasLayer

func update_GUI(health, items):
	$Control/TextureRect/HBoxContainer/LifeCount.text = str(health)
	# TODO display items as a icons
	$Control/TextureRect/HBoxContainer/Items.text = str(items)