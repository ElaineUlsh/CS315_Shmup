extends CharacterBody2D

@export var move_direction = Vector2(0, 0)

func _ready() -> void:
	self.velocity = move_direction
	
func _process(delta: float) -> void:
	move_and_slide()
	
	## makes the enemies despawn if they're too far off the screen
	var offscreen_threshold = -100
	if position.x < offscreen_threshold:
		queue_free()
