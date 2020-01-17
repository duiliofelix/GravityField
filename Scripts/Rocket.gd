extends RigidBody2D

func _ready():
	self.add_central_force(Vector2(0, -30))
	
func _input(event):
	if Input.is_key_pressed(KEY_SPACE):
		self.add_central_force(Vector2(0, -30))
		
