extends Control

@onready var score_label = $MarginContainer/ScoreLabel

func _ready():
	SignalManager.on_score_updated.connect(on_score_updated)
	pass

func on_score_updated():
	score_label.text = str(ScoreManager.get_score())
	pass
