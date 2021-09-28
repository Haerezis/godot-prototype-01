extends "res://addons/custom_kinematic_body_2d/custom_kinematic_body_2d.gd"


var horizontal_velocity = 1.0 # m/s
var jump_apex_x = 1.0 # m
var jump_apex_y = 1.0 # m
var jump_velocity = (2 * jump_apex_y * horizontal_velocity) / jump_apex_y
var calculated_gravity = (-2 * jump_apex_y * horizontal_velocity^2) / jump_apex_y^2

export var terminal_vertical_velocity = 100.0
export var terminal_horizontal_velocity = 50.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	apply_gravity(delta)
	apply_terminal_velocity()
	move_and_collide(velocity * delta)
	print(position)

func apply_terminal_velocity():
	if is_on_floor():
		velocity.y = 0.0
	else:
		velocity.y = min(velocity.y, terminal_vertical_velocity)
	
	if is_on_wall():
		velocity.x = 0.0
	else:
		velocity.x = min(velocity.x, terminal_horizontal_velocity)
