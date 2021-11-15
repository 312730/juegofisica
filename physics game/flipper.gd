extends Area2D
var side

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_left") and side  == 'left':
		rotation_degrees = -40
	if Input.is_action_just_released("ui_left") and side  == 'left':
		rotation_degrees = 0
		
	if Input.is_action_just_pressed("ui_right") and side  == 'right':
		rotation_degrees = 185
	if Input.is_action_just_released("ui_right") and side  == 'right':
		rotation_degrees = 145
