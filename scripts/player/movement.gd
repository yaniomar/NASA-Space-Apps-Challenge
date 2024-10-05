extends CharacterBody2D

const speed = 250
var current_dir="none"

#func _on_body_entered(body: Node) -> void:
#	if body.is_in_group("enemies"):
#		print("Collided with an enemy")

#func _ready() -> void:
#	connect("body_entered",self,"_on_body_entered(object)")
func movement():
	pass

func _physics_process(delta):
	player_movement(delta)
	
func player_movement(delta):
	if Input.is_action_pressed("ui_right"):
		play_anim(1)
		current_dir="right"
		velocity.x=speed
		velocity.y=0
	elif Input.is_action_pressed("ui_left"):
		current_dir="left"
		play_anim(1)
		velocity.x=-speed
		velocity.y=0
	elif Input.is_action_pressed("ui_down"):
		current_dir="down"
		play_anim(1)
		velocity.y=speed
		velocity.x=0
	elif Input.is_action_pressed("ui_up"):
		current_dir="up"
		play_anim(1)
		velocity.y=-speed
		velocity.x=0
	else:
		play_anim(0)
		velocity.x=0
		velocity.y=0
	move_and_slide()
			

func play_anim(movement):
	var dir = current_dir
	var anim = $AnimatedSprite2D
	
	if dir == "right":
		if movement == 1:
			anim.play("right_side_walk")
		elif movement == 0:
			anim.play("right_side_idle")
	if dir == "left":
		if movement == 1:
			anim.play("left_side_walk")
		elif movement == 0:
			anim.play("left_side_idle")
	if dir == "down":
		if movement == 1:
			anim.play("down_side_walk")
		elif movement == 0:
			anim.play("down_side_idle")
	if dir == "up":
		if movement == 1:
			anim.play("up_side_walk")
		elif movement == 0:
			anim.play("up_side_idle")
	
	
	


func _on_collision_shape_2d_child_entered_tree(node: Node) -> void:
	print("entered") # Replace with function body.
