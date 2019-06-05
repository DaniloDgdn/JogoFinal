extends Label

var tempo = 5
func _ready():
	set_process(true)
	
	
func _process(delta):
	
		tempo -= delta
		if tempo > 0:
			$".".set_text("Timer: "+str(tempo))
		else:
			get_tree().change_scene("GameOverFakeBoss.tscn")
