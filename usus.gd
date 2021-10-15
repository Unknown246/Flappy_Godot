extends KinematicBody2D
  
var veltical_speed = 0

func _ready():
	pass



func _physics_process(delta):
	print(transform.origin)
	veltical_speed += 30000*delta
	veltical_speed =- 12000 if Input. is_action_just_pressed("jump") else veltical_speed
	
	if(test_move(transform,Vector2(5000, veltical_speed)*delta/10)):
		get_tree().reload_current_scene()
	else: 
		move_and_slide(Vector2(50000, veltical_speed)*delta)
	
	
	
	




