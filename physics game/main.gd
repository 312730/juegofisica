extends Node2D
onready var ball = preload("res://Bola.tscn")
onready var obstacle = preload("res://obstacle.tscn")
onready var sides = preload("res://sides.tscn")
onready var triangles = preload("res://tringleobstacle.tscn")
onready var flip = preload("res://flippedtriangle.tscn")
onready var flipper = preload("res://flipper.tscn")

const posiciones = [Vector2(299,60), Vector2(249,110), Vector2(349,110)]

func _ready():
	var gameplace = sides.instance()
	add_child(gameplace)
	var rflipper = flipper.instance()
	rflipper.set_position(Vector2(270,350))
	rflipper.side = "left"
	add_child(rflipper)
	var lflipper = flipper.instance()
	lflipper.rotation_degrees = 145
	lflipper.set_position(Vector2(380,350))
	lflipper.side = "right"
	add_child(lflipper)
	var b = ball.instance()
	b.set_position(Vector2(300,100))
	add_child(b)
	for i in range(3):
		var obs = obstacle.instance()
		obs.set_position(posiciones[i])
		add_child(obs)
		
	var triobs = triangles.instance()
	triobs.set_position(Vector2(200,0))
	add_child(triobs)
	
	var flipped = flip.instance()
	flipped.set_position(Vector2(440,0))
	add_child(flipped)
