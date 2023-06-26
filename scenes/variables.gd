extends Node

var blood
var global_blood
var people

func _ready():
	global_blood = 0.0
	blood = 0.0
	people = 10.0
	
func _process(delta):
	people = floorf(roundf(global_blood) / 200)
