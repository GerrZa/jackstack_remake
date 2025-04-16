extends Node

var circle_ex = preload("res://src/parts/circle_explode.tscn")
var line_ex = preload("res://src/parts/line_explode.tscn")
var spr_ex = preload("res://src/parts/spr_explode.tscn")
var text_float = preload("res://src/parts/text_float.tscn")
var line_ex_cone = preload("res://src/parts/line_explode_cone.tscn")

func spawn(part_name, glob_pos := Vector2.ZERO, part_attribute := {}):
	var part_ins = get(part_name).instantiate()
	part_ins.global_position = round(glob_pos)
	
	get_tree().current_scene.add_child(part_ins)
	
	for k in part_attribute.keys():
		part_ins.set_att(k,part_attribute[k])
