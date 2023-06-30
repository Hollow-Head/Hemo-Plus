extends VBoxContainer

@onready var button = $HBoxContainer/Heart/HeartButton
@onready var bloodText = $Stats/Blood/BloodIcon/BloodText
@onready var peopleText = $Stats/People/PeopleIcon/PeopleText
@onready var bar = $HBoxContainer/TextureProgressBar
@onready var upgradesPanel = preload("res://scenes/upgrades_panel.tscn")

func _on_heart_button_pressed():
	Variables.blood += 1 * Upgrades.BPC
	Variables.global_blood += 1 * Upgrades.BPC
	bar.value += 1 * Upgrades.BPC
	#if (Variables.global_blood != 0 && int(Variables.global_blood) % 450 == 0):
	#	Variables.people += 1
	#	bar.value = 0
	#if (bar.value == 450):
	#	bar.value = 0
	#bloodText.text = str(Variables.blood)



func _process(delta):
	bloodText.text = str(roundf(Variables.blood))
	peopleText.text = str(Variables.people)
	if (bar.value == 450):
		bar.value = 0
	

func _on_timer_timeout():
	Variables.blood += Upgrades.BPS
	bar.value += Upgrades.BPS
	$Timer.start()



func _on_upgrade_button_pressed():
	var panel = upgradesPanel.instantiate()
	panel.get_child(1).get_child(1).get_child(0).upgradeType = 1
	get_parent().get_parent().get_parent().add_child(panel)



func _on_community_button_pressed():
	var panel = upgradesPanel.instantiate()
	panel.get_child(1).get_child(1).get_child(0).upgradeType = 2
	get_parent().get_parent().get_parent().add_child(panel)

func _on_research_button_pressed():
	var panel = upgradesPanel.instantiate()
	panel.get_child(1).get_child(1).get_child(0).upgradeType = 3
	get_parent().get_parent().get_parent().add_child(panel)


func _on_audio_stream_player_finished():
	$AudioStreamPlayer.play()


