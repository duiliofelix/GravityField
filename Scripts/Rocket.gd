extends RigidBody2D

func _input(event):
	if Input.is_key_pressed(KEY_SPACE):
		var thrust = $BaseThrust.cast_to
		var directed_thrust = thrust.rotated(self.transform.get_rotation())
		self.add_central_force(directed_thrust)
		
	if Input.is_key_pressed(KEY_RIGHT):
		self.add_force($RightThruster.transform.get_origin(), $RightThruster.cast_to)
		
	if Input.is_key_pressed(KEY_LEFT):
		self.add_force($LeftThruster.transform.get_origin(), $LeftThruster.cast_to)

func _process(delta):
	var bodies = self.get_colliding_bodies()
	
	if len(bodies) > 0:
		get_tree().reload_current_scene()
