extends Camera2D


func _ready():
	pass


func _process(delta):
	transform.origin.x = $"../KinematicBody2D".transform.origin.x
