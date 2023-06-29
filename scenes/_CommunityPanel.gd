extends VBoxContainer

@onready var communityItem = preload("res://scenes/upgrade_item.tscn")
@onready var main = load("res://scenes/main.tscn").instantiate()

func _ready():
	for comm in Upgrades.comm:
		var cmI = communityItem.instantiate()
		add_child(cmI)
		cmI.things = comm
		cmI.atualizar()

func _on_exit_button_toggled(button_pressed):
#	get_parent().get_parent().get_parent().get_parent().get_parent().get_node("/root/MainControl/Panel/TextureRect/Main").visible = true
	get_parent().get_parent().get_parent().get_parent().queue_free()
	
