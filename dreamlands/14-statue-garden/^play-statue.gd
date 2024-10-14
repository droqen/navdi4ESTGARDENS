extends Node
func play(d:LiveDream)->void:
	d.goto_new_land(
		load("res://dreamlands/14-statue-garden/statue-land.tscn").instantiate(),
		"rmA"
	)
