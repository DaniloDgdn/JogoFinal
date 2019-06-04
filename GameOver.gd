extends Node



func _process(delta):
	if Input.is_action_pressed('NewGame'):
		get_tree().change_scene("Loading.tscn")
