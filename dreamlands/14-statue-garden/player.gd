extends NavdiSolePlayerRigid

func _physics_process(_delta: float) -> void:
	linear_velocity = Pin.get_dpad_norm() * 30
