extends VBoxContainer

@onready var button = $Heart/HeartButton
@onready var bloodText = $Stats/Blood/BloodIcon/BloodText
@onready var peopleText = $Stats/People/PeopleIcon/PeopleText
@onready var upgradesPanel = preload("res://scenes/upgrades_panel.tscn")
@onready var communityPanel = preload("res://scenes/communtity_panel.tscn")

func _on_heart_button_pressed():
	Variables.blood += 1 * Upgrades.BPC
	Variables.global_blood += 1 * Upgrades.BPC
	#bloodText.text = str(Variables.blood)



func _process(delta):
	bloodText.text = str(roundf(Variables.blood))
	peopleText.text = str(Variables.people)

func _on_timer_timeout():
	Variables.blood += Upgrades.BPS
	$Timer.start()



func _on_upgrade_button_pressed():
	visible = false
	var panel = upgradesPanel.instantiate()
	get_parent().get_parent().get_parent().get_parent().add_child(panel)



func _on_community_button_pressed():
	visible = false
	var panel = communityPanel.instantiate()
	get_parent().get_parent().get_parent().get_parent().add_child(panel)


func _on_audio_stream_player_finished():
	$AudioStreamPlayer.play()
