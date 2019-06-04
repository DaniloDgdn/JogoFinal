extends Node2D

var pre_inimigo = preload ("res://Inimigo.gd")
var intervalo = 2 

func _ready():
		set_process(true)
		
		pass

func _process(delta):
	if intervalo > 0:
		intervalo -= delta
	else:
		intervalo = rand_range(0.3 , 1)
		var inimigos = pre_inimigo.instance()
		inimigos.set_pos(Vector2(rand_range(30 , 610), -40))
		get_owner().add_child(inimigos)
