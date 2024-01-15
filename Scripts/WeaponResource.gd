extends Resource
# Adding a "class_name" line defines the name of the resource within the engine!
# Now "Weapon" is a resource within godot
class_name Weapon

@export var name:String
@export_multiline var description:String
@export var damage:int
@export var texture:Texture2D
