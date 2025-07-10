extends Node2D
@onready var game_manager: Node = %"game manager"

func _on_fruit_body_entered(body: Node2D) -> void:
	game_manager.fruit_counter()
	queue_free()
