extends KinematicBody2D

const speed = 5

func _process(delta):
	if Input.is_action_pressed("ui_up"):
		if position.y>-70:
			move_and_collide(Vector2(0,-1) * speed)
	if Input.is_action_pressed("ui_down"):
		if position.y<850:
			move_and_collide(Vector2(0,1) * speed)
	if Input.is_action_pressed("ui_left"):
		if position.x>20:
			move_and_collide(Vector2(-1,0) * speed)
			get_node("Sprite").flip_h=false
	if Input.is_action_pressed("ui_right"):
		if position.x<3495:
			get_node("Sprite").flip_h=true
			move_and_collide(Vector2(1,0) * speed)
	


