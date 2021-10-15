extends Node2D
var score = 0 
const pipe_make_offset = 1000
const pipe_offset = 200
var next_pipe_pos = 200
var last_playerpos =-10
var pipe=preload("res://usus2/usus.tscn")


func _physics_process(delta):
	var playerpos = $KinematicBody2D. transform.origin.x
	if(last_playerpos<next_pipe_pos)and(next_pipe_pos<playerpos): #AMOGUS
		var pipe_pos=next_pipe_pos+pipe_make_offset
		next_pipe_pos+=pipe_offset 
		var pipe_instance=pipe.instance()
		pipe_instance.transform.origin.x= pipe_pos
		add_child(pipe_instance)
		
	score = max(0,playerpos-pipe_make_offset)/pipe_offset
	$"/root/Global".best_score=max (score,$"/root/Global".best_score)
	$Camera2D/Label.text = str(score)
	$Camera2D/Label2.text = str($"/root/Global".best_score)
