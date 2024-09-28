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
	
