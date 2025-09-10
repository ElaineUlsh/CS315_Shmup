extends RigidBody2D

@export var shoot_speed = 750 ## class property that is editable on right now
var explostion_particles = preload("res://elements/explosion.tscn")

func _ready() -> void:
	self.apply_impulse(Vector2(0, -shoot_speed))


func _on_body_entered(body: Node) -> void:
	get_node("/root/Shmup").increment_score()
	var new_explosion = explostion_particles.instantiate()
	get_node("/root").add_child(new_explosion)
	new_explosion.position = self.position
	new_explosion.one_shot = true
	body.queue_free()
	self.queue_free()
