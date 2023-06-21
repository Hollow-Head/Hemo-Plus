extends VBoxContainer

@onready var button = $Heart/HeartButton
@onready var bloodText = $Stats/CenterContainer2/BloodText
@onready var upgradesPanel = preload("res://scenes/upgrades_panel.tscn")

func _on_heart_button_pressed():
	Variables.blood += 1 * Variables.multiplier
	bloodText.text = str(Variables.blood)



func _process(delta):
	bloodText.text = str(Variables.blood)

func _on_timer_timeout():
	Variables.blood += Upgrades.BPS
	$Timer.start()


func _on_menu_button_pressed():
	visible = false
	var panel = upgradesPanel.instantiate()
	get_parent().get_parent().get_parent().get_parent().add_child(panel)

