extends CharacterBody2D
var Level = position.y
# Movement
func _physics_process(_delta: float) -> void:
	velocity.x = 0
	velocity.y = 0
	if Input.is_key_pressed(KEY_W):
		velocity.y = -64

	if Input.is_key_pressed(KEY_S):
		velocity.y = 64

	if Input.is_key_pressed(KEY_D):
		velocity.x = 64

	if Input.is_key_pressed(KEY_A):
		velocity.x = -64
	move_and_slide()
	Level = position.y
