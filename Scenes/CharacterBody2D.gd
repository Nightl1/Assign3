extends CharacterBody2D

var normal_speed = 100.0
var max_speed = 400.0

func _physics_process(delta):
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		if Input.is_action_just_pressed("ui_accept"):
			if normal_speed < max_speed:
				normal_speed = max_speed
			else:
				normal_speed = 100.0  # Set the speed back to the original normal speed
		velocity.x = direction * normal_speed
	else:
		velocity.x = move_toward(velocity.x, 0, normal_speed)

	move_and_slide()

