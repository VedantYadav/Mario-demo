extends Area2D

var speed = 400
var vel = Vector2(0,0)

func _on_EnemyArea2D_body_entered(body):
	#queue_free()
	get_tree().change_scene(("res://Main Scene.tscn"))

	



onready var _animated_sprite = $AnimatedSprite

func _physics_process(delta):
	_animated_sprite.play("run")
	vel.x = 0

	vel.x = -speed
