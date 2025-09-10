extends Node2D

@export var text_score : Label
var score = 0

func _ready() -> void:
	text_score.text = str(score)

func increment_score():
	score += 1
	text_score.text = str(score)
	
	$SFXExplosion.play()
