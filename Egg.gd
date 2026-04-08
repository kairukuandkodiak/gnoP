extends Area2D
class_name Egg



func _on_body_entered(body):
	if body is Farmer:
		queue_free()
