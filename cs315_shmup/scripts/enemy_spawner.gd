extends Timer

var enemy_scene = preload("res://elements/enemy_ship.tscn")

func _on_timeout() -> void:
	var new_enemy = enemy_scene.instantiate()
	
	get_node('/root').add_child(new_enemy)
	
	new_enemy.position.y = -100
	new_enemy.position.x = randi_range(0, 1152)
