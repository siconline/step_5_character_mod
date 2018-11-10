extends Node2D

onready var row_1 = $buttons_row_0


var arr_color_part_0 = \
	[
	Color( 1, 1, 1, 0.5 ), # placeholder start no color
	Color( "FF8A00" ), 
	Color( "60FF00" ), 
	Color( "FFFB00" ), 
	Color( "D7806B" ), 
	Color( "9A6153" ),
	Color( 1, 1, 1, 0.5 ) # placeholder end no color
	]
var color_left_row_0 = arr_color_part_0.size()/2 - 1
var color_middle_row_0 = arr_color_part_0.size()/2
var color_right_row_0 = arr_color_part_0.size()/2 + 1


var arr_texture_part_0 = \
	[
	preload('res://images/char_part_0/part_0_01.svg'),
	preload('res://images/char_part_0/part_0_02.svg'),
	preload('res://images/char_part_0/part_0_03.svg'),
	preload('res://images/char_part_0/part_0_04.svg'),
	]
var texture_left_row_0 = arr_texture_part_0.size()/2 - 1 
var texture_middle_row_0 = arr_texture_part_0.size()/2
var texture_right_row_0 = arr_texture_part_0.size()/2 + 1

# Called when the node enters the scene tree for the first time.
func _ready():
	
	
	# change variables type color and textures row_1
	row_1.arr_color = arr_color_part_0
	row_1.color_left = color_left_row_0
	row_1.color_middle = color_middle_row_0
	row_1.color_right = color_right_row_0
	
	row_1.arr_texture = arr_texture_part_0
	row_1.texture_left = texture_left_row_0
	row_1.texture_middle = texture_middle_row_0
	row_1.texture_right = texture_right_row_0
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass