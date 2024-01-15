extends Label

func display(damage:int):
	#Updates damage number
	text = "Dmg: " + str(damage)
	# Makes label visible
	self_modulate.a = 1
	
	#Fades label out using a tween
	var tween = create_tween().set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_BACK)
	tween.tween_property(self, "self_modulate:a", 0, 1)
	
