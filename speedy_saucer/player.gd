extends RigidBody2D


@export var thrust: float = 80


func _ready() -> void:
	pass


func _physics_process(delta: float) -> void:
	var thrust_vec = Vector2(
		Input.get_axis("move_left", "move_right"),
		Input.get_axis("move_up", "move_down")
	).normalized() * thrust
	apply_force(thrust_vec)
