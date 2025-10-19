extends WindowIndexed

@onready var Upload: = $PanelContainer / MainContainer / Upload
@onready var Upload2: = $PanelContainer / MainContainer / Upload2
@onready var upload_out: = $PanelContainer / MainContainer / UploadOut

const MOD_DIR := "bernier154-network_combiner"
var mod_dir_path = ModLoaderMod.get_unpacked_dir().path_join(MOD_DIR)


func process(delta: float) -> void :
	upload_out.count = Upload.count + Upload.count


func export() -> Dictionary:
	return super().merged({
		"filename": "../../"+ mod_dir_path.replace('res://','') +"/scenes/"+scene_file_path.get_file(), 
	},true)

func save() -> Dictionary:
	return super().merged({
		"filename": "../../"+ mod_dir_path.replace('res://','') +"/scenes/"+scene_file_path.get_file(), 
	},true)
