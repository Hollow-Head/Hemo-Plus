extends Node2D

@onready var button = $Button
@onready var bloodText = $BloodText

func _on_clicked():
	Variables.blood += 1
	bloodText.text = str(Variables.blood)
	pass # Replace with function body.
