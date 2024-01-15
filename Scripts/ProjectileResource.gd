extends Weapon
class_name Projectile
# Projectile is going to "extend" our weapon resources. 
# This gives it all the features of a weapon, but with the added "speed" variable!

@export var speed:int
@export var collision_shape:RectangleShape2D
