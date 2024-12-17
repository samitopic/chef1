extends CharacterBody3D

var speed = 5.0
var rotation_speed = 2.0

func _process(delta):
	if Input.is_action_pressed("ui_up"):
		position += transform.basis.z * -speed * delta
	if Input.is_action_pressed("ui_down"):
		position += transform.basis.z * speed * delta
	if Input.is_action_pressed("ui_left"):
		rotation_degrees.y += rotation_speed
	if Input.is_action_pressed("ui_right"):
		rotation_degrees.y -= rotation_speed
