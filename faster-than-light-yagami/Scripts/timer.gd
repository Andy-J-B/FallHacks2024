extends Node
@onready var timer: Timer = $Timer


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$ClockCountdown.text = "Time Until Death: " + str(ceil(timer.time_left))
	pass

func _on_timer_timeout() -> void:
	
	pass
