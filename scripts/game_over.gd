extends Control

@onready var go_label = $GoLabel
@onready var space_label = $SpaceLabel
@onready var timer = $Timer
@onready var sound = $Sound


func _ready():
	hide()
	SignalManager.on_plane_died.connect(on_plane_died)
	pass
	
func _process(_delta):
	if(space_label.visible && Input.is_action_just_pressed("fly")):
		GameManager.load_main_scene()
	pass
	
func run_sequence():
	go_label.hide()
	space_label.show()
	pass
	
func on_plane_died() -> void:
	sound.play()
	show()
	timer.start()
	pass

func _on_timer_timeout():
	run_sequence()
	pass 
