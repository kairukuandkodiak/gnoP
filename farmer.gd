extends CharacterBody2D

# Movement
func _physics_process(_delta: float) -> void:
	velocity.x = 0
	velocity.y = 0
	if Input.is_key_pressed(KEY_W):
		velocity.y = -384

	if Input.is_key_pressed(KEY_S):
		velocity.y = 384

	if Input.is_key_pressed(KEY_D):
		velocity.x = 384

	if Input.is_key_pressed(KEY_A):
		velocity.x = -384
	move_and_slide()
# Harvest

# Money

# Sell
