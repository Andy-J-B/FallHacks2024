extends Label


@onready var done_label: Label = self
var reset: bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	reset = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _on_text_changed(new_text: String) -> void:
	if reset == false:
		print("Ajidjaklsfj")
		await get_tree().create_timer(1).timeout
		self.text = "Pending"
		self.modulate = "#808080"
		
		
		
		reset = true
		
	else:
		pass
	
