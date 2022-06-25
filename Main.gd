extends Node

# Declare member variables here. Examples:
export (PackedScene) var ingredient_scene


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_IngredientSpawnTimer_timeout():
	if not Input.is_action_pressed("click"):
		return

	var ingredient = ingredient_scene.instance()
	ingredient.position = get_viewport().get_mouse_position()
	add_child(ingredient)
