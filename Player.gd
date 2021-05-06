extends KinematicBody2D

var speed = 400
var jumpForce = 500
var gravity = 400

var vel = Vector2(0,0)

onready var _animated_sprite = $AnimatedSprite

func _physics_process(delta):
	vel.x = 0

	if Input.is_action_pressed("move_left"):
		vel.x = -speed
		_animated_sprite.play("run")
		

	if Input.is_action_pressed("move_right"):
		vel.x = speed
		_animated_sprite.play("run")
		
		
	vel.y += gravity * delta
	
	if Input.is_action_just_pressed("move_jump") and is_on_floor():
		vel.y = -jumpForce 

	vel = move_and_slide(vel, Vector2.UP)
	
	if vel.x < 0:
		_animated_sprite.flip_h = true
		
	elif vel.x > 0:
		_animated_sprite.flip_h = false
	
	if vel.x == 0:
		_animated_sprite.stop()

