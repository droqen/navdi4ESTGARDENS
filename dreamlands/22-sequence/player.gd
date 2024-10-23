extends NavdiSolePlayer

var cell : Vector2i
func _ready() -> void:
	cell = (position/10) as Vector2i
func _physics_process(_delta: float) -> void:
	if Pin.get_dpad_tap():
		cell += Pin.get_dpad_tap()
		position = cell as Vector2 * 10 + Vector2(5,5)
