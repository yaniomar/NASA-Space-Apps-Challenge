extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$player.position.x=Global.player_enter_outside_posx
	$player.position.y=Global.player_enter_outside_posy


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	change_scenes()


func _on_outside_transition_block_body_entered(body: Node2D) -> void:
	if body.has_method("movement"):
		Global.transition_scene=true

#func _on_outside_transition_block_body_exited(body: Node2D) -> void:
	#if body.has_method("player"):
		#Global.transition_scene=false

func change_scenes():
	if Global.transition_scene==true:
		if Global.current_scene=="outside":
			get_tree().change_scene_to_file("res://scenes/inside.tscn")
			Global.finish_change_scenes()


func _on_outside_transition_block_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
