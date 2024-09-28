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
	
	#SilentWolf.Scores.save_score("player name", 1)
