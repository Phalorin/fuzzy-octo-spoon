extends RigidBody

export var rolling_force = 40

func _physics_process(delta):
	if Input.is_action_pressed("forward"):
		angular_velocity.x -= rolling_force*delta
	elif Input.is_action_pressed("back"):
		angular_velocity.x += rolling_force*delta
	if Input.is_action_pressed("left"):
		angular_velocity.z += rolling_force*delta
	if Input.is_action_pressed("right"):
		angular_velocity.z -= rolling_force*delta
