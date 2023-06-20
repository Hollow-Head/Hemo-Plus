extends VBoxContainer

@onready var icon = $MarginContainer/HBoxContainer/Icon
@onready var desc = $MarginContainer/HBoxContainer/VBoxContainer/Description
@onready var Uname = $MarginContainer/HBoxContainer/VBoxContainer/Name
@onready var price = $MarginContainer/HBoxContainer/BuyButton/VBoxContainer/HBoxContainer/BloodPrice
@onready var peoplePrice = $MarginContainer/HBoxContainer/BuyButton/VBoxContainer/HBoxContainer2/PeoplePrice
@onready var peopleIcon = $MarginContainer/HBoxContainer/BuyButton/VBoxContainer/HBoxContainer2/PeopleIcon

var things = {}

func atualizar():
	icon.texture = load(things.img)
	icon.size = Vector2(168,168)
	Uname.text = things.name
	desc.text = things.description
	price.text = things.blood_price
	
	if (things.has("peoplePrice")):
		print(things.peoplePrice)
	
	
