extends CanvasModulate

@export var gradiant: GradientTexture1D
var time: float = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	time += delta
	var value = (sin(time - PI - 2) + 1.0) / 2.0
	self.color = gradiant.gradient.sample(value)
