extends Area2D
signal clicked()

func _ready():
	$ButtonSprite.frame = 0

func _process(delta):
	if Input.is_action_just_released("click"):
		$ButtonSprite.frame = 0
	
func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		$ButtonSprite.frame = 1
		emit_signal("clicked")
