extends Control

@onready var h_score = $MC/HScore

func _ready():
	h_score.text = str(ScoreManager.get_high_score())
	pass
	
func _process(_delta):
	if(Input.is_action_just_pressed("fly")):
		GameManager.load_game_scene()
	pass
