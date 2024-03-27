extends Area2D


@onready var score = %Score
@onready var collected = $AnimatedSprite2D

func _on_body_entered(body):
	if body.name == "CharacterBody2D":
		collected.play("pickedUP")
		await collected.animation_finished
		queue_free()
		score.add_points()
		

