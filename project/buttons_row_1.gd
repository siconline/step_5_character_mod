extends Control


var arr_color = \
	[
	Color( 1, 1, 1, 0.5 ), # placeholder start no color
	Color( "FF8A00" ), 
	Color( "60FF00" ), 
	Color( "FFFB00" ), 
	Color( "D7806B" ), 
	Color( "9A6153" ),
	Color( 1, 1, 1, 0.5 ) # placeholder end no color
	]
var color_left = arr_color.size()/2 - 1
var color_middle = arr_color.size()/2
var color_right = arr_color.size()/2 + 1


var arr_texture = \
	[
	preload('res://images/char_part_0/part_0_01.svg'),
	preload('res://images/char_part_0/part_0_02.svg'),
	preload('res://images/char_part_0/part_0_03.svg'),
	preload('res://images/char_part_0/part_0_04.svg'),
	]
var texture_left = arr_texture.size()/2 - 1 
var texture_middle = arr_texture.size()/2
var texture_right = arr_texture.size()/2 + 1


func _ready():
	#print (arr_color.size()/2)
	pass # Replace with function body.


func _process(delta):
	# change button color
	$button_left/button_left_color.modulate = arr_color[color_left]
	$button_right/button_right_color.modulate = arr_color[color_right]
	# change color at texture from character
	$texture_middle.modulate = arr_color[color_middle]
	
	
	# change button texture part
	$button_left/texture.texture = arr_texture[texture_left]
	$texture_middle.texture = arr_texture[texture_middle]
	$button_right/texture.texture = arr_texture[texture_right]
	
	
	# change color at textures
	$button_left/texture.modulate = arr_color[color_left]
	$texture_middle.modulate = arr_color[color_middle]
	$button_right/texture.modulate = arr_color[color_right]


# button left for color change
func _on_button_left_color_pressed():
	if color_left > 0:
		_change_color(-1)
		#print('click left button : ', color_left)


# button right for color change
func _on_button_right_color_pressed():
	if color_right < arr_color.size()-1:
		_change_color(1)
		#print('click right button : ', color_right)


# function for button color change
func _change_color(value):
	color_left   += value
	color_middle += value
	color_right  += value
	

# button left for texture part change
func _on_button_left_pressed():
	if texture_left > 0:
		_change_texture(-1)
		print('click left button : ', texture_left)


# button right for texture part change
func _on_button_right_pressed():
	if texture_right < arr_texture.size()-1:
		_change_texture(1)
		print('click right button : ', texture_right)


# function for button texure change
func _change_texture(value):
	texture_left   += value
	texture_middle += value
	texture_right  += value