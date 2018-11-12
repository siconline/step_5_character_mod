extends KinematicBody2D

var arr_color_part_0
var arr_color_part_1

var color_middle_part_0
var color_middle_part_1


var arr_texture_part_0
var arr_texture_part_1

var texture_middle_part_0
var texture_middle_part_1


func _ready():
	pass # Replace with function body.


func _process(delta):
	
	
	# change texture part
	$base/body/head/hair.texture = arr_texture_part_0[texture_middle_part_0]
	$base/body/head.texture = arr_texture_part_1[texture_middle_part_1]
	
	
	# change color at textures
	$base/body/head/hair.self_modulate = arr_color_part_0[color_middle_part_0]
	$base/body/head.self_modulate = arr_color_part_1[color_middle_part_1]
