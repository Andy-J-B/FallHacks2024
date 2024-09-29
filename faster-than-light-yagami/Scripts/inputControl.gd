extends LineEdit



@onready var player_input: LineEdit = self
@onready var done_button: Button = $"../doneButton"
@onready var done_label: Label = $"../doneLabel"
@onready var lives_saved: Label = $"../livesSaved"
@onready var curr_name: Label = $"../CurrentName"
@onready var timer: Timer = $"../Timer"
@onready var death_sound: AudioStreamPlayer2D = $"../deathSound"
@onready var clock_countdown: Label = $"../ClockCountdown"
@onready var scribble: AudioStreamPlayer2D = $"../scribble"







var letters_typed: int = 0
var old_names: Array = [-1]
var names:Dictionary = NameDataBase.englishNames
var hardNames:Dictionary = NameDataBase.hardEnglishNames
#var names: Dictionary = {0: "Benny Maxwell", 1:"Farmer John", 2:"Bryan Dela Cruz"}
var current_name: String = ""
var score:int = 0
var death: bool = false
var difficulty:int = 0

var red: String = "#EE4B2B"
var grey: String = "#808080"
var green: String = "#7CFC00"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	current_name = get_new_name(names, hardNames, old_names, difficulty)
	#print(current_name)
	player_input.modulate = "808080"
	player_input.placeholder_text = current_name
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#if death == true:
		
	if death == false:
		lives_saved.text = "Lives Saved: " + str(score)
		curr_name.text = current_name
		#print(timer.time_left)
		if timer.time_left <= 0:
			if !death_sound.playing:
				death_sound.play()
			death = true
	if death == true:
		if !death_sound.playing:
				death_sound.play()
		player_input.editable = false
		player_input.visible = false
		done_label.visible = false
		done_button.visible = false
		curr_name.visible = false
		timer.stop()
		lives_saved.visible = false
		clock_countdown.visible = false
		get_tree().change_scene_to_file("res://Scenes/gameOver.tscn")
		
		
		
		
	
	pass
	
	

	
	
func check_match(source: String, input: String, length:int) -> bool:
	if input.substr(0, length) == source.substr(0, length):
		return true
	return false
	
		
	
func get_new_name(names:Dictionary, hardNames:Dictionary, old_names:Array, difficulty:int) -> String:
	var size = names.size()
	var hardSize = hardNames.size()
	var random_key = -1
	
	# Hard Name Selected
	if randi_range(0, 10) < difficulty:
		random_key = hardNames.keys()[randi() % hardSize]
		return hardNames[random_key]
		
	
	while random_key in old_names:
		random_key = names.keys()[randi() % size]
	return names[random_key]
	

		
	
		
func _on_text_changed(new_text: String) -> void:
	letters_typed = len(player_input.text)
	
	if letters_typed == 0:
		player_input.modulate = "#808080"
	elif(check_match(current_name, player_input.text, letters_typed) and letters_typed != len(current_name)+1):
		player_input.modulate = "#7CFC00"
	else:
		player_input.modulate = "#EE4B2B"


func _on_text_submitted(new_text: String) -> void:
	if current_name == player_input.text:
		score += 1
		
		done_label.text = "SUCCESS"
		done_button.modulate = green
		done_label.modulate = green
		var old_key = names.find_key(current_name)
		old_names.append(old_key)
		current_name = get_new_name(names, hardNames, old_names, difficulty)
		player_input.text = ""
		player_input.placeholder_text = current_name
		player_input.modulate = "#808080"
		
		if difficulty <8:
			if score % 5 == 0:
				difficulty += 1
		if (timer.wait_time >= 5):
			timer.wait_time = 12 - score/5
		timer.start()
	else:
		done_button.modulate = red
		done_label.modulate = red
		done_label.text = "FAILURE"
		player_input.text = ""
		player_input.placeholder_text = current_name
		player_input.modulate = red
	pass # Replace with function body.
	
	
