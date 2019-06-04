extends Area2D

var flip = true
var posicao_inicial 
var posicao_final
var velocidade = 2
const GRAVITY = 50
const MAX_GRAVITY = 1100
var motion = Vector2()


func _physics_process(delta):
	# get_overlapping_bodies() serve pra verificar se um corpo está sobrepondo outro
	var bodies = get_overlapping_bodies() 
	# ciclo for verificando qual o name do body está sobrepondo o bodies(porta) no momento, se for o player ele troca de fase 
	for body in bodies:
		if body.name == "Tiro":
			if Input.is_action_pressed('Shoot'):
				$".".queue_free()
				get_tree().change_scene("Cena3.tscn")
		
func _ready():
	add_to_group("Inimigos")
	posicao_inicial = $".".position.x
	posicao_final = posicao_inicial + 300
	
func _process(delta):
	
	motion.y += GRAVITY
	
	if motion.y >= MAX_GRAVITY:
		motion.y = MAX_GRAVITY
			
	
			
