extends Node

# Declare member variables here. Examples:
export (PackedScene) var salad


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
# func _process(delta):
# 	pass


func _on_IngredientSpawnTimer_timeout():
	if not Input.is_action_pressed("click"):
		return

	var spawn_position = get_viewport().get_mouse_position()
	var offset = 100
	var ingredient = salad.instance()
	ingredient.position = spawn_position
	add_child(ingredient)
	
	ingredient = salad.instance()
	ingredient.position = spawn_position + Vector2.LEFT * offset
	add_child(ingredient)
	
	ingredient = salad.instance()
	ingredient.position = spawn_position + Vector2.RIGHT * offset
	add_child(ingredient)
	
	print()
