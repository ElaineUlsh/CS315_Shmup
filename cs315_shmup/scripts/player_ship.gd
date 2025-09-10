extends CharacterBody2D

var speed = 200

@export var bullet_element : Resource
## var bullet_element = preload("res://Elements/laser.tscn")

func _process(delta: float) -> void:
	var move_direction = Input.get_axis("left", "right")
	## print(move_direction) ## prints -1 when left and 1 when right
	
	self.velocity.x = move_direction * speed ## will change because when you let go, it becomes 0 instantaneously
	
	if Input.is_action_just_pressed("shoot"):
		## make the scene exist
		var new_bullet = bullet_element.instantiate()
		
		## just instantiating it does not put it in your node hierarchy
		## therefore, you have to add it onto the screen
		get_node("/root").add_child(new_bullet)
		
		## position the bullet
		new_bullet.position = self.position
	
	move_and_slide()
