extends Node2D

@onready var door1 = $Door
@onready var door2 = $Door2

func teleport_body(body: Node2D) -> void:
	if body.position.y > 130 :
		body.position = door2.position
		body.position.x = door2.position.x + 200
	else:
		body.position = door1.position
		body.position.x = door1.position.x - 200
