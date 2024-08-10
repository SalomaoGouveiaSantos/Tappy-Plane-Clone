extends Node2D


@onready var score_sound = $ScoreSound


func _process(delta):
	position.x -= GameManager.SCROLL_SPEED * delta
	if(position.x < -100):
		queue_free()

func _on_screen_exited():
	queue_free()
	pass 


func _on_pipe_body_entered(body):
	if(body.is_in_group(GameManager.GROUP_PLAYER)):
		body.die()
	pass 


func _on_laser_body_entered(body):
	if(body.is_in_group(GameManager.GROUP_PLAYER)):
		score_sound.play()
		ScoreManager.increment_score()
		pass 
