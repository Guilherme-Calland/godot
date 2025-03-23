extends CharacterBody2D

@export var speed = 300
var facing_right := true

func _physics_process(delta):
	var direction := Input.get_axis("left", "right")
	facing_right = direction == 1 if direction != 0 else facing_right
	$Sprite2D.flip_h = !facing_right
	
	velocity.x = direction * speed
	move_and_slide()
