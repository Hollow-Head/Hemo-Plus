extends VBoxContainer

@onready var icon = $MarginContainer/HBoxContainer/Icon
@onready var desc = $MarginContainer/HBoxContainer/VBoxContainer/Description
@onready var Uname = $MarginContainer/HBoxContainer/VBoxContainer/Name
@onready var bloodPrice = $MarginContainer/HBoxContainer/BuyButton/BuyContainer/Blood/BloodPrice
@onready var bloodIcon = $MarginContainer/HBoxContainer/BuyButton/BuyContainer/Blood/BloodIcon
@onready var peoplePrice = $MarginContainer/HBoxContainer/BuyButton/BuyContainer/People/PeoplePrice
@onready var peopleIcon = $MarginContainer/HBoxContainer/BuyButton/BuyContainer/People/PeopleIcon
@onready var buyContainer = $MarginContainer/HBoxContainer/BuyButton/BuyContainer
@onready var people = $MarginContainer/HBoxContainer/BuyButton/BuyContainer/People
@onready var blood = $MarginContainer/HBoxContainer/BuyButton/BuyContainer/Blood
var things = {}

func atualizar():
	icon.texture = load(things.img)
	Uname.text = things.name
	desc.text = things.description
	bloodPrice.text = things.blood_price	
	peoplePrice.text = things.people_price
	
	if (things.blood_price == ""):
		buyContainer.remove_child(blood)
		
				
	if (things.people_price == ""):
		buyContainer.remove_child(people)
		
	
	
