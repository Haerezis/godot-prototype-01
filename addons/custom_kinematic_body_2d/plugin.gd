tool
extends EditorPlugin


func _enter_tree():
	add_custom_type("CustomKinematicBody2D", "KinematicBody2D", preload("custom_kinematic_body_2d.gd"), preload("icon.svg"))


func _exit_tree():
	remove_custom_type("CustomKinematicBody2D")
