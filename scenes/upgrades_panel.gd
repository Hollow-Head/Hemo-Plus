extends VBoxContainer

@onready var upgradeItem = preload("res://scenes/upgrade_item.tscn")
@onready var main = load("res://scenes/main.tscn").instantiate()

func _ready():
	for upgrades in Upgrades.list:
		var upI = upgradeItem.instantiate()
		add_child(upI)
		upI.things = upgrades
		upI.atualizar()

func _on_exit_button_toggled(button_pressed):
	get_parent().get_parent().get_parent().get_parent().get_parent().get_node("/root/MainControl/Panel/TextureRect/Main").visible = true
	get_parent().get_parent().get_parent().get_parent().get_parent().queue_free()
	
