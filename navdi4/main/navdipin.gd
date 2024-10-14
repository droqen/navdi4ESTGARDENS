extends Node

func get_dpad() -> Vector2i:
	return Vector2i(
		(1 if Input.is_action_pressed("right") else 0)-
		(1 if Input.is_action_pressed("left") else 0),
		(1 if Input.is_action_pressed("down") else 0)-
		(1 if Input.is_action_pressed("up") else 0)
	)

func get_dpad_norm() -> Vector2:
	return Vector2(
		(1 if Input.is_action_pressed("right") else 0)-
		(1 if Input.is_action_pressed("left") else 0),
		(1 if Input.is_action_pressed("down") else 0)-
		(1 if Input.is_action_pressed("up") else 0)
	).normalized()

func get_dpad_tap() -> Vector2i:
	return Vector2i(
		(1 if Input.is_action_just_pressed("right") else 0)-
		(1 if Input.is_action_just_pressed("left") else 0),
		(1 if Input.is_action_just_pressed("down") else 0)-
		(1 if Input.is_action_just_pressed("up") else 0)
	)

func get_enter_hit() -> bool: return Input.is_action_just_pressed("enter")
func get_enter_held() -> bool: return Input.is_action_pressed("enter")
func get_exit_hit() -> bool: return Input.is_action_just_pressed("exit")
func get_exit_held() -> bool: return Input.is_action_pressed("exit")
