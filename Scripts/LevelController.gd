extends Node2D


var scene = preload("res://scenes/pipes/Pipe.tscn") # Will load when parsing the script.
var _timer = null
var pipe_generation_timer = 3.0;


# Called when the node enters the scene tree for the first time.
func _ready():
	#Generate First Pipe
	_generate_pipe();
	
	_timer = Timer.new()
	add_child(_timer)
	_timer.connect("timeout", self, "_on_Timer_timeout")
	_timer.set_wait_time(pipe_generation_timer)
	_timer.set_one_shot(false) # Make sure it loops
	_timer.start()
	
	
func _on_Timer_timeout():
	_generate_pipe();
	
	
func _generate_pipe():
	randomize()
	var random_y_value = rand_range(-85,85)
	var pipe = scene.instance()
	pipe.set_position(pipe.get_position() + Vector2(1000, random_y_value))
	add_child(pipe)
