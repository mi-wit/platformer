extends "res://src/Actors/Actor.gd"

func _ready() -> void:
	velocity.x = -speed.x

func _physics_process(delta: float) -> void:
	if is_on_wall():
		velocity *= -1.0
	
	velocity.y += gravity * get_physics_process_delta_time()
	velocity.y = move_and_slide(velocity, FLOOR_NORMAL).y
