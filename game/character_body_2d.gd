extends CharacterBody2D

var speed = 150
var gravity = 1000
var jump = 500

func _physics_process(delta):
	var velocity = self.velocity
	velocity.y += gravity * delta
	if  Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = -jump
	elif  Input.is_action_just_pressed("ui_right"):
		velocity.x = speed
	elif Input.is_action_just_pressed("ui_left"):
		velocity.x = -speed
	elif Input.is_action_just_released("ui_right") or Input.is_action_just_released("ui_left"):
		velocity.x = 0
		
	self.velocity = velocity
	move_and_slide()
