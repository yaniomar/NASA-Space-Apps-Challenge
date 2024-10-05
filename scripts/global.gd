extends Node


var current_scene = "inside"
var transition_scene = false

var player_enter_shelter_posx=554
var player_enter_shelter_posy=454
var player_start_shelter_posx=200
var player_start_shelter_posy=200

var player_enter_outside_posx=9320
var player_enter_outside_posy=2880

var game_first_loading = true

func finish_change_scenes():
	if transition_scene==true:
		transition_scene=false
		if current_scene=="inside":
			current_scene="outside"
		else :
			current_scene="inside"
	
