extends Node2D

onready var character = $character
onready var row_0 = $buttons_row_0
onready var row_1 = $buttons_row_1

# part 0
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
	preload('res://images/char_part_0/part_se.png'),
	preload('res://images/char_part_0/part_01.png'),
	preload('res://images/char_part_0/part_02.png'),
	preload('res://images/char_part_0/part_03.png'),
	preload('res://images/char_part_0/part_04.png'),
	preload('res://images/char_part_0/part_05.png'),
	preload('res://images/char_part_0/part_06.png'),
	preload('res://images/char_part_0/part_07.png'),
	preload('res://images/char_part_0/part_08.png'),
	preload('res://images/char_part_0/part_se.png'),
	]
var texture_left_row_0 = arr_texture_part_0.size()/2 - 1 
var texture_middle_row_0 = arr_texture_part_0.size()/2
var texture_right_row_0 = arr_texture_part_0.size()/2 + 1


# part 1
var arr_color_part_1 = \
	[
	Color( 1, 1, 1, 0.5 ), # placeholder start no color
	Color( "FFE6C7" ), 
	Color( "BE8D51" ), 
	Color( "FFFEC7" ), 
	Color( 1, 1, 1, 0.5 ) # placeholder end no color
	]
var color_left_row_1 = arr_color_part_1.size()/2 - 1
var color_middle_row_1 = arr_color_part_1.size()/2
var color_right_row_1 = arr_color_part_1.size()/2 + 1


var arr_texture_part_1 = \
	[
	preload('res://images/char_part_1/part_se.png'),
	preload('res://images/char_part_1/part_01.png'),
	preload('res://images/char_part_1/part_02.png'),
	preload('res://images/char_part_1/part_03.png'),
	preload('res://images/char_part_1/part_04.png'),
	preload('res://images/char_part_1/part_05.png'),
	preload('res://images/char_part_1/part_06.png'),
	preload('res://images/char_part_1/part_07.png'),
	preload('res://images/char_part_1/part_08.png'),
	preload('res://images/char_part_1/part_se.png'),
	]
var texture_left_row_1 = arr_texture_part_1.size()/2 - 1 
var texture_middle_row_1 = arr_texture_part_1.size()/2
var texture_right_row_1 = arr_texture_part_1.size()/2 + 1

# Called when the node enters the scene tree for the first time.
func _ready():
	
	
	# change variables type color and textures row_0
	row_0.arr_color = arr_color_part_0
	row_0.color_left = color_left_row_0
	character.arr_color_part_0 = arr_color_part_0
	character.color_middle_part_0 = color_middle_row_0
	row_0.color_right = color_right_row_0
	
	row_0.arr_texture = arr_texture_part_0
	row_0.texture_left = texture_left_row_0
	character.arr_texture_part_0 = arr_texture_part_0
	character.texture_middle_part_0 = texture_middle_row_0
	row_0.texture_right = texture_right_row_0
	
	
	# change variables type color and textures row_1
	row_1.arr_color = arr_color_part_1
	row_1.color_left = color_left_row_1
	character.arr_color_part_1 = arr_color_part_1
	character.color_middle_part_1 = color_middle_row_1
	row_1.color_right = color_right_row_1
	
	row_1.arr_texture = arr_texture_part_1
	row_1.texture_left = texture_left_row_1
	character.arr_texture_part_1 = arr_texture_part_1
	character.texture_middle_part_1 = texture_middle_row_1
	row_1.texture_right = texture_right_row_1
	