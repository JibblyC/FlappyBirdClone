extends KinematicBody2D

var speed = 250
var velocity = Vector2()
var gravity = 350
var jump = 200


func get_input():
	# Detect up/down/left/right keystate and only move when pressed.
	velocity = Vector2()
	if Input.is_action_pressed('ui_select'):
		velocity.y -=  (gravity + jump)
	else:
		velocity.y += gravity
	##velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		get_tree().reload_current_scene()
