extends "res://src/Actors/Actor.gd"

func _ready() -> void:
	set_physics_process(false) # do not start calculating at init 
	velocity.x = -speed.x

func _physics_process(delta: float) -> void:
	if is_on_wall():
		velocity *= -1.0
	
	velocity.y += gravity * get_physics_process_delta_time()
	velocity.y = move_and_slide(velocity, FLOOR_NORMAL).y
