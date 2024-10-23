extends Node
func play(d:LiveDream)->void:
	d.goto_new_land(
		load("res://dreamlands/22-sequence/sequence-land.tscn").instantiate(),
		"rmA"
	)
