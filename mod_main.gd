extends Node

const MOD_DIR := "bernier154-network_combiner"
const LOG_NAME := "bernier154-network_combiner:Main"


var mod_dir_path := ""

func _init() -> void:
	mod_dir_path = ModLoaderMod.get_unpacked_dir().path_join(MOD_DIR)


func _ready() -> void:
	
	get_node("/root/Data").windows['download_combiner'] = {
		"name": "Download Combiner",
		"icon": "../../"+ mod_dir_path.replace('res://','') +"/textures/icons/download",
		"description": "Combine two download input into one.",
		"scene": "../../"+ mod_dir_path.replace('res://','') +"/scenes/window_download_combiner",
		"group": "",
		"category": "network",
		"level": 0,
		"requirement": "",
		"hidden": false,
		"attributes":{
			"limit": -1
		},
		"data": {},
		"guide": "Combine two download input into one."
	}
	
	get_node("/root/Data").windows['upload_combiner'] = {
		"name": "Upload Combiner",
		"icon": "../../"+ mod_dir_path.replace('res://','') +"/textures/icons/upload",
		"description": "Combine two upload input into one.",
		"scene": "../../"+ mod_dir_path.replace('res://','') +"/scenes/window_upload_combiner",
		"group": "",
		"category": "network",
		"level": 0,
		"requirement": "",
		"hidden": false,
		"attributes":{
			"limit": -1
		},
		"data": {},
		"guide": "Combine two upload input into one."
	}
