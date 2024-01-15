extends Node2D

const projectile_object = preload("res://projectile.tscn")

@export var weapon:Weapon :
	set(value):
		weapon = value
		$Sprite2D.texture = weapon.texture
@export var projectile:Projectile


func attack():
	$AnimationPlayer.play("fire")
	
	var new_projectile = projectile_object.instantiate()
	add_child(new_projectile)
	
	var direction_to_mouse = global_position.direction_to(get_global_mouse_position())
	new_projectile.launch(weapon, projectile, direction_to_mouse)
	
