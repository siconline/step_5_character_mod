extends Control


var arr_color
var color_left
var color_right


var arr_texture
var texture_left
var texture_right


func _ready():
	pass # Replace with function body.


func _process(delta):
	
	
	# change button color
	$button_left/button_left_color.modulate = arr_color[color_left]
	$button_right/button_right_color.modulate = arr_color[color_right]
	
	
	# change button texture part
	$button_left/texture.texture = arr_texture[texture_left]
	$button_right/texture.texture = arr_texture[texture_right]
	
	
	# change color at textures
	$button_left/texture.modulate = arr_color[color_left]
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
	color_right  += value
	if self.name == "buttons_row_0":
		get_node("../character").color_middle_part_0 += value
	elif self.name == "buttons_row_1":
		get_node("../character").color_middle_part_1 += value
	
	

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
	texture_right  += value
	if self.name == "buttons_row_0":
		get_node("../character").texture_middle_part_0 += value
	elif self.name == "buttons_row_1":
		get_node("../character").texture_middle_part_1 += value
	