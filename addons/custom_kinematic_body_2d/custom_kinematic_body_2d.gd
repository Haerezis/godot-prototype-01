tool 
extends KinematicBody2D

var velocity: Vector2
var angular_velocity: Vector2


var gravity_magnitude: int = ProjectSettings.get_setting("physics/2d/default_gravity")
var gravity_vector: Vector2 = ProjectSettings.get_setting("physics/2d/default_gravity_vector")
export(float, 0.0, 1.0) var gravity_scale = 1.0

func apply_gravity(delta):
	velocity += gravity() * delta
	
func gravity():
	return gravity_vector * gravity_magnitude * gravity_scale
