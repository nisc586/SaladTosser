extends Node

# Declare member variables here. Examples:
export (PackedScene) var salad


# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var hand = $PlayerHand
	hand.position = get_viewport().get_mouse_position()


func _on_IngredientSpawnTimer_timeout():
	if not Input.is_action_pressed("click"):
		return

#	var spawn_position = get_viewport().get_mouse_position()
#	var offset = 100
#	var ingredient = salad.instance()
#	ingredient.position = spawn_position
#	add_child(ingredient)
#
#	ingredient = salad.instance()
#	ingredient.position = spawn_position + Vector2.LEFT * offset
#	add_child(ingredient)
#
#	ingredient = salad.instance()
#	ingredient.position = spawn_position + Vector2.RIGHT * offset
#	add_child(ingredient)
	
	
	var nossle = $PlayerHand/LineNossle
	for child in nossle.get_children():
		var ingredient = salad.instance()
		ingredient.position = child.get_global_position()
		add_child(ingredient)
