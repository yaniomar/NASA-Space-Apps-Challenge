extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Global.game_first_loading == true:
		$player.position.x=Global.player_start_shelter_posx
		$player.position.y=Global.player_start_shelter_posy
	else:
		$player.position.x=Global.player_enter_shelter_posx
		$player.position.y=Global.player_enter_shelter_posy
	pass
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	change_scene()


func _on_outside_transition_block_body_entered(body: Node2D) -> void:
	print("here")
	print(Global.current_scene)
	if body.has_method("movement"):
		
		Global.transition_scene=true

func change_scene():
	if Global.transition_scene==true:
		if Global.current_scene=="inside":
			get_tree().change_scene_to_file("res://scenes/outside.tscn")
			Global.game_first_loading=false
			Global.finish_change_scenes()


func _on_outside_transition_block_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
