extends TextEdit



@onready var player_input: TextEdit = self
var letters_typed: int = 0
var old_names: Array = [-1]
var names: Dictionary = {0: "Benny Maxwell", 1:"Farmer John", 2:"Bryan Dela Cruz"}
var current_name: String = ""
var score:int = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    
    
    
    
    pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
    
    pass
    
    

    
    
func check_match(source: String, input: String) -> bool:
    if input == source:
        return true
    return false
    
        
    
func get_new_name(names:Dictionary, old_names:Array) -> String:
    var size = names.size()
    var random_key = -1
    while random_key in old_names:
        random_key = names.keys()[randi() % size]
    return names[random_key]
    

func _on_text_changed() -> void:
    letters_typed = len(player_input.text)
    print(player_input.text)
    print("Letters Typed: " + str(letters_typed))
    print(check_match(current_name, player_input.text))




func _on_done_button_pressed() -> void:
    if check_match(current_name, player_input.text):
        score += 1
        var old_key = names.find_key(current_name)
        old_names.append(old_key)
        current_name = get_new_name(names, old_names)
        
        
    
        
        
        
    
    pass # Replace with function body.
