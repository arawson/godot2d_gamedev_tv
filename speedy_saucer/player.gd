extends RigidBody2D


@export var thrust: float = 80


func _ready() -> void:
	pass


func _physics_process(delta: float) -> void:
	var thrust_vec = Input.get_vector(
		"move_left", "move_right",
		"move_up", "move_down"
	) * thrust
	apply_force(thrust_vec)
