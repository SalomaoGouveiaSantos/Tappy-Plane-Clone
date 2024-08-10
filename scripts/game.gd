extends Node2D

@export var pipes_scene: PackedScene

@onready var pipes_holder = $PipesHolder
@onready var spawn_u = $SpawnU
@onready var spawn_l = $SpawnL
@onready var spawn_timer = $SpawnTimer

func _ready():
	SignalManager.on_plane_died.connect(_on_plane_died)
	ScoreManager.set_score(0)
	spawn_pipes()
	pass
	
func spawn_pipes() -> void:
	
	var pipes_instance = pipes_scene.instantiate()
	var y_pos = randf_range(spawn_u.position.y, spawn_l.position.y)
	pipes_instance.position = Vector2(spawn_u.position.x, y_pos)
	pipes_holder.add_child(pipes_instance)
	pass 
	
func stop_pipes() -> void:
	spawn_timer.stop()
	for pipe in pipes_holder.get_children():
		pipe.set_process(false)
	pass
	
func _on_spawn_timer_timeout():
	spawn_pipes()
	pass 




func _on_plane_died():
	stop_pipes()
	pass 
