extends ParallaxBackground

func _ready():
	SignalManager.on_plane_died.connect(on_plane_died)
	
func _process(delta):
	scroll_offset.x -= GameManager.SCROLL_SPEED * delta

func on_plane_died() -> void:
	set_process(false)
