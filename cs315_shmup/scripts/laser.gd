extends RigidBody2D

@export var shoot_speed = 750 ## class property that is editable on right now

func _ready() -> void:
	self.apply_impulse(Vector2(0, -shoot_speed))
