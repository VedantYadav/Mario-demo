extends KinematicBody2D

var speed = 400


onready var vel = Vector2(0,0)

func _physics_process(delta):
	vel.x = 0
	
	vel.x = -speed
