extends Node

const GROUP_PLAYER: String = "player"
const SCROLL_SPEED: float = 120.0

var game_scene: PackedScene = preload("res://scenes/game.tscn")
var main_scene: PackedScene = preload("res://scenes/main.tscn")

func load_game_scene() -> void:
	get_tree().change_scene_to_packed(game_scene)
	pass
	
func load_main_scene() -> void:
	get_tree().change_scene_to_packed(main_scene)
	pass
	
