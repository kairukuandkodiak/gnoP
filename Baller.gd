extends CharacterBody2D
signal Level(value)
var Speed = 64
# Movement
func _physics_process(_delta: float) -> void:
	velocity.x = 0
	velocity.y = 0
	if Input.is_key_pressed(KEY_W):
		velocity.y = -Speed

	if Input.is_key_pressed(KEY_S):
		velocity.y = Speed

	if Input.is_key_pressed(KEY_D):
		velocity.x = Speed

	if Input.is_key_pressed(KEY_A):
		velocity.x = -Speed
	move_and_slide()
	emit_signal("Level", position.y)
