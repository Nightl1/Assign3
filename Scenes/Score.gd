extends Node

@onready var label = %Label

var points = 0

func add_points():
	points += 1
	print(points)
	label.text = "Fuel: " + str(points)
