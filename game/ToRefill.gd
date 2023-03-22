extends Button
signal refill

func _process(delta):
	if Input.is_action_pressed('choose'):
		emit_signal("refill") 
		
	
