extends CharacterBody2D

var mission_count=0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_released("interact"):
		mission_count+=1
		update_missions()
	
func update_missions():
	if mission_count==1:
		var anim = $mission1
		print("here")
		anim.play("check")
	elif mission_count==2:
		var anim = $mission2
		anim.play("check")
	elif mission_count==3:
		var anim = $mission3
		anim.play("check")
	elif mission_count==4:
		var anim = $mission4
		anim.play("check")
