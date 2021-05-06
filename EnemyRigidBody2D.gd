extends RigidBody2D

var speed = 100
onready var _animated_sprite = $AnimatedSprite


var vel = Vector2(0,0)


func _on_EnemyRigidBody2D_body_shape_entered(body_id, body, body_shape, local_shape):
	get_tree().change_scene(("res://Main Scene.tscn"))



func _physics_process(delta):
	_animated_sprite.play("run")
	vel.x = 0

	vel.x = -speed
