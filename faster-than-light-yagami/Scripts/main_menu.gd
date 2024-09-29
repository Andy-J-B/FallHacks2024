extends Node




func _on_play_pressed():
	get_tree().change_scene_to_file("res://Scenes/type.tscn")
	pass
	
func _on_leaderboard_pressed():
	get_tree().change_scene_to_file("res://Scenes/Leaderboard/leaderboard.tscn")
