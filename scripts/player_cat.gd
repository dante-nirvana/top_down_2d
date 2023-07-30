extends CharacterBody2D


@export var player_speed: float = 100.0


func _physics_process(delta: float) -> void:
	# input direction
	var input_direction: Vector2 = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	)
	
	velocity = input_direction * player_speed # updating velocity each cycle
	
	move_and_slide() # as the name says
