extends Node2D

const WOOD_BOW = preload("res://Resources/Weapons/WoodBow.tres")
const IRON_BOW = preload("res://Resources/Weapons/IronBow.tres")
const GOLD_BOW = preload("res://Resources/Weapons/GoldBow.tres")

const WOOD_ARROW = preload("res://Resources/Projectiles/WoodArrow.tres")
const IRON_ARROW = preload("res://Resources/Projectiles/IronArrow.tres")
const GOLD_ARROW = preload("res://Resources/Projectiles/GoldArrow.tres")

func _process(delta):
	if Input.is_action_just_pressed("Attack"):
		$Weapon.attack()

enum {WOOD, IRON, GOLD}
func _on_bow_selector_item_selected(index):
	match index:
		WOOD:
			$Weapon.weapon = WOOD_BOW
		IRON:
			$Weapon.weapon = IRON_BOW
		GOLD:
			$Weapon.weapon = GOLD_BOW


func _on_arrow_selector_item_selected(index):
	match index:
		WOOD:
			$Weapon.projectile = WOOD_ARROW
		IRON:
			$Weapon.projectile = IRON_ARROW
		GOLD:
			$Weapon.projectile = GOLD_ARROW

