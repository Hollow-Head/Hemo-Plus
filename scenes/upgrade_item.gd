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
var whatitIs

func atualizar():
	icon.texture = load(things.img)
	Uname.text = things.name
	desc.text = things.description
	bloodPrice.text = things.blood_price	
	peoplePrice.text = things.people_price
	
	if (things.blood_price == ""):
		whatitIs = "people"
		buyContainer.remove_child(blood)
		
				
	if (things.people_price == ""):
		whatitIs = "blood"
		buyContainer.remove_child(people)
		
	
	


func _on_buy_button_pressed():
	if (whatitIs == "blood"):
		if (Variables.blood >= float(things.blood_price)):
			Variables.blood -= float(things.blood_price)
			Upgrades.BPC += float(things.BPC)
#			Upgrades.BPS += float(things.BPS)
			things.blood_price = str(roundf(float(things.blood_price) * float(things.Step)))
			bloodPrice.text = things.blood_price
	elif (whatitIs == "people"):
		if (Variables.people >= int(things.people_price)):
#			Upgrades.BPC += float(things.BPC)
			Upgrades.BPS += float(things.BPS)
			things.people_price = str((int(things.people_price) * int(things.Step)))
			peoplePrice.text = things.people_price
		
