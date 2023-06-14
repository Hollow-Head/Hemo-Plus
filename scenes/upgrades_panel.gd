extends VBoxContainer

@onready var upgradeItem = preload("res://scenes/upgrade_item.tscn")

func _ready():
	for upgrades in Upgrades.list:
		var upI = upgradeItem.instantiate()
		add_child(upI)
		upI.things = upgrades
		upI.atualizar()
