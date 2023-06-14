extends VBoxContainer

@onready var icon = $MarginContainer/HBoxContainer/Icon
@onready var desc = $MarginContainer/HBoxContainer/CenterContainer/VBoxContainer/Description
@onready var Uname = $MarginContainer/HBoxContainer/CenterContainer/VBoxContainer/Name
@onready var price = $MarginContainer/HBoxContainer/BuyButton/VBoxContainer/HBoxContainer/BloodPrice

var things = {}

func atualizar():
	icon.texture = load(things.img)
	Uname.text = things.name
	desc.text = things.description
	price.text = things.blood_price
	
	
