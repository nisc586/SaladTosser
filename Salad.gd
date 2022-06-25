extends KinematicBody2D


# Declare member variables here. Examples:
var velocity = Vector2()

var GRAVITY = Vector2.DOWN * 300  # m/s^2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("click"):
		position = get_global_mouse_position()

func _physics_process(delta):
	velocity += GRAVITY * delta
	velocity = move_and_slide(velocity, Vector2.UP)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
