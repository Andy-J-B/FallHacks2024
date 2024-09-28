extends Node
@onready var timer: Timer = $Timer


func _process(delta: float) -> void:
	$ClockCountdown.text = "%s" % ceil(timer.time_left)

func _on_timer_timeout() -> void:
	print("Dead Person")
	# Play audio
	timer.start()
