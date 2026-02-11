extends Node2D

@onready var door1 = $Door
@onready var door2 = $Door2

var timer: float = 0.0

func _physics_process(delta:float) -> void:
	if timer > 0.0:
		timer -= 1 * delta

func teleport_body(body: Node2D) -> void:
	if timer <= 0.0:
		if body.position.y > 130 :
			body.position = door2.position
			body.position.x = door2.position.x
		else:
			body.position = door1.position
			body.position.x = door1.position.x
		timer = 1.0
