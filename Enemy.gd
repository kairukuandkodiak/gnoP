extends CharacterBody2D
var A = 0
func _on_ball_level(value: Variant) -> void:
	A = value

func _physics_process(delta: float) -> void:
	if A < postion.y:
		velocity.y = -64
	if A > postion.y:
		velocity.y = 64
	move_and_slide()



	
