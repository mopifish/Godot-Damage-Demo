extends Node2D

var speed:int
var direction:Vector2
var damage:int

func _process(delta):
	position += speed*direction*delta

func launch(weapon:Weapon, projectile:Projectile, launch_direction:Vector2):
# The "launch" method sets up the projectile internally
# by giving it a sprite texture, collision shape, as well
# as speed and direction
	$Sprite2D.texture = projectile.texture
	$Area2D/CollisionShape2D.shape = projectile.collision_shape
	
	damage = weapon.damage + projectile.damage
	speed = projectile.speed
	direction = launch_direction
	rotation = direction.angle()


# Destroys object when it collides with an enemy
func _on_area_2d_area_entered(area):
	queue_free()
