extends RigidBody2D

onready var force = Vector2.ZERO

func _ready():
	pass

func _process(delta):
	if Input.is_action_pressed("ui_accept"):
		$ColorRect.color = Color(0xff0000ff)
		force.y += 5
	else:
		$ColorRect.color = Color(0x0000ffff)
		force.y = 0

func _integrate_forces(state):
	if (linear_velocity.x < 50):
		linear_velocity.x = 50

	linear_velocity.y += force.y
