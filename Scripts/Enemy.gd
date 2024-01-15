extends Node2D

@export var MAX_HEALTH:int

@onready var health = MAX_HEALTH:
	set(value):
		var damage = value - health
		$DamageLabel.display(damage)
		health = clamp(value, 0, MAX_HEALTH)
		

func _on_area_2d_area_entered(area):
	health -= area.get_parent().damage
