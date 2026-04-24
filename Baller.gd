extends CharacterBody2D
signal Level(value)
signal Sides(value)
var Speed = 128
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
	if position.x >= 576 or position.x <= -576:
		position.x = 0
		position.y = 0
	move_and_slide()
	emit_signal("Level", position.y)
	emit_signal("Sides", position.x)
