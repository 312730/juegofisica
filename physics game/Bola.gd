extends RigidBody2D

var move_speed = 20000
var direction = 1
func _ready():
	impulse(Vector2(rand_range(-100,100), rand_range(-100,100)))

func impulse(amount):
	self.apply_central_impulse(amount)
#func _physics_process(delta):
#	linear_velocity = Vector2(move_speed * direction, 100)
		 
