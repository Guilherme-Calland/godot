extends CharacterBody2D

@export var speed = 300
var facing_right := true

func run():
	var direction := Input.get_axis(ActionConstants.LEFT, ActionConstants.RIGHT)
	facing_right = direction == 1 if direction != 0 else facing_right
	$Sprite2D.flip_h = !facing_right
	
	var moving = direction != 0
	$AnimationPlayer.play(AnimationConstants.MOVING if moving else AnimationConstants.IDLE)

	velocity.x = direction * speed
	move_and_slide()
