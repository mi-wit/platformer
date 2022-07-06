tool
extends Area2D

onready var animPlayer: AnimationPlayer = $AnimationPlayer
export var next_scene: PackedScene


func _on_body_entered(body: Node) -> void:
	teleport()


func _get_configuration_warning() -> String:
	return "The next_scene property can not be empty" if not next_scene else ""


func teleport() -> void:
	animPlayer.play("fade_in")
	yield(animPlayer, "animation_finished")
	get_tree().change_scene_to(next_scene)

