extends VBoxContainer

@onready var button = $Heart/HeartButton
@onready var bloodText = $Stats/CenterContainer2/BloodText

func _on_heart_button_pressed():
	Variables.blood += 1
	bloodText.text = str(Variables.blood)
