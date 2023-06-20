extends VBoxContainer

@onready var button = $Heart/HeartButton
@onready var bloodText = $Stats/CenterContainer2/BloodText

func _on_heart_button_pressed():
	Variables.blood += 1 * Variables.multiplier
	bloodText.text = str(Variables.blood)

func _on_menu_button_toggled(button_pressed):
		get_tree().change_scene_to_file("res://scenes/upgrades_panel.tscn")

func _process(delta):
	bloodText.text = str(Variables.blood)


func _on_timer_timeout():
	Variables.blood += Upgrades.BPS
