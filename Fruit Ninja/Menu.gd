extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_play_3d_button_up():
	get_tree().change_scene_to_file("res://3D/world.tscn")


func _on_play_2d_button_up():
	get_tree().change_scene_to_file("res://2D/2dworld.tscn")


func _on_quit_button_up():
	pass # Replace with function body.
