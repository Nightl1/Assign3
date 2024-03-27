extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	var tween = create_tween()
	tween.tween_property($FuelAudio, "volume_db", -20, 3)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
