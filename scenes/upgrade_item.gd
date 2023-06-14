extends VBoxContainer

@onready var icon = $MarginContainer/HBoxContainer/Icon
@onready var desc = $MarginContainer/HBoxContainer/MarginContainer/Description
@onready var price = $MarginContainer/HBoxContainer/BuyButton/VBoxContainer/HBoxContainer/BloodPrice

var things = {}

func atualizar():
	icon.texture = load(things.img)
	desc.text = things.description
	price.text = things.blood_price
	
	
