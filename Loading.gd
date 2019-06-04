extends Node2D



func _process(delta):
	if Input.is_action_pressed('Shoot'):
		get_tree().change_scene("Cena1.tscn")
	
	