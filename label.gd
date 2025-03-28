extends Label
class_name stopwatch

var level_time = 0.0

var is_on : bool = true

func _process(delta : float):
	if is_on:
		level_time += delta
		#time in seconds, with 3 decimal places
		self.text = String.num(level_time, 2) + "s"

func start():
	is_on = true

func stop():
	is_on = false

func reset():
	level_time = 0.0


func _on_health_attribute_death() -> void:
	is_on = false
