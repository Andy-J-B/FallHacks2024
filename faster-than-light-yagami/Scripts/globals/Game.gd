extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	SilentWolf.configure({
		"api_key": "QompbKZvv62VR2mUuIgXg3roqpwSxeF47TzgSzcM",
		"game_id": "fasterthanlightyagami",
		"log_level": 1
	})

	SilentWolf.configure_scores({
		"open_scene_on_close": "res://Scenes/main_menu.tscn"
	})
	
	await get_tree().create_timer(1).timeout
	SilentWolf.Scores.save_score("player_name", 1)
