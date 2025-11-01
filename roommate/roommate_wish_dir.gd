extends WishDirection
class_name PlayerWishDir

@export var current_position_node: Node3D;
@export var distance_tolerance: float = 5;
@export var sprite: Sprite3D;

var direction_vec: Vector2 = Vector2.ZERO;

func _physics_process(delta: float) -> void:
	self.direction_vec = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	sprite.rotation = Vector3(0,0,0)

func _physics_process_in_range(_delta: float) -> void:
	pass;
	
func get_input_xz() -> Vector2:
	return self.direction_vec;
