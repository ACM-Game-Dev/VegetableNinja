extends Node3D

var prop_scene = preload("res://3D/objects/clickable_prop.tscn")
var frame_count = 0 
func spawnProp(location, force,torque):
	var prop = prop_scene.instantiate()
	prop.translate(location)
	prop.apply_central_impulse(force)
	prop.apply_torque_impulse(torque)
	add_child(prop)

# Called when the node enters the scene tree for the first time.
func _ready():
	# Spawn a single clickable_prop
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if frame_count % 200 == 0: 
		spawnProp(Vector3(0,0,-2),Vector3(0,10,0),Vector3(10,0,0))
	frame_count += 1
