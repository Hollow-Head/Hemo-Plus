extends VBoxContainer

@onready var upgradeItem = preload("res://scenes/upgrade_item.tscn")
@onready var main = load("res://scenes/main.tscn").instantiate()
var upgradeType

func _ready():
	match upgradeType:
		1:
			for upgrades in Upgrades.upgrade:
				var upI = upgradeItem.instantiate()
				add_child(upI)
				upI.things = upgrades
				upI.atualizar()
		2:
			for upgrades in Upgrades.community:
				var upI = upgradeItem.instantiate()
				add_child(upI)
				upI.things = upgrades
				upI.atualizar()
		3: 
			for upgrades in Upgrades.research:
				var upI = upgradeItem.instantiate()
				add_child(upI)
				upI.things = upgrades
				upI.atualizar()

func _on_exit_button_pressed():
	get_parent().get_parent().get_parent().queue_free()

