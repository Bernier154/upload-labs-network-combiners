extends WindowIndexed

@onready var Download: = $PanelContainer / MainContainer / Download
@onready var Download2: = $PanelContainer / MainContainer / Download2
@onready var download_out: = $PanelContainer / MainContainer / DownloadOut

const MOD_DIR := "bernier154-network_combiner"
var mod_dir_path = ModLoaderMod.get_unpacked_dir().path_join(MOD_DIR)


func process(delta: float) -> void :
	download_out.count = Download.count + Download2.count

func export() -> Dictionary:
	return super().merged({
		"filename": "../../"+ mod_dir_path.replace('res://','') +"/scenes/"+scene_file_path.get_file(), 
	},true)

func save() -> Dictionary:
	return super().merged({
		"filename": "../../"+ mod_dir_path.replace('res://','') +"/scenes/"+scene_file_path.get_file(), 
	},true)
