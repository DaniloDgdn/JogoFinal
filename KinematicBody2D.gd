extends KinematicBody2D

var speed = 200

var velocity = Vector2()
    

func _physics_process(delta):
	
	
    velocity = Vector2()
    if Input.is_action_pressed('Right'):
        velocity.x += 1
    if Input.is_action_pressed('Left'):
        velocity.x -= 1
    if Input.is_action_pressed('Down'):
        velocity.y += 1
    if Input.is_action_pressed('Up'):
        velocity.y -= 1
    velocity = velocity * speed
	
    move_and_slide(velocity)
	
	
func _process(delta):
	
	pass