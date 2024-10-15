extends NavdiSolePlayerRigid

var walking : bool = false
var facingleft : bool = false
var facingup : bool = false

func _physics_process(_delta: float) -> void:
	linear_velocity = Pin.get_dpad_norm() * 30
	if linear_velocity:
		walking = true
		if linear_velocity.x:
			facingleft = linear_velocity.x < 0
			$feetSpr.flip_h = facingleft
			$headSpr.flip_h = facingleft
		facingup = linear_velocity.y < 0
	else:
		walking = false
	match [walking, facingup]:
		[true,false]: $feetSpr.setup([21,22,23,24],8)
		[false,false]: $feetSpr.setup([20])
		[true,true]: $feetSpr.setup([31,32,33,34],8)
		[false,true]: $feetSpr.setup([30])
	match facingup:
		true: $headSpr.setup([11])
		false: $headSpr.setup([10])
	match $feetSpr.frame:
		22,24,32,34: $headSpr.position.y = -5
		_: $headSpr.position.y = -6
