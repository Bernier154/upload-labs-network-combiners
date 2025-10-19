extends WindowIndexed

@onready var Download: = $PanelContainer / MainContainer / Download
@onready var Download2: = $PanelContainer / MainContainer / Download2
@onready var download_out: = $PanelContainer / MainContainer / DownloadOut


func process(delta: float) -> void :
	download_out.count = Download.count + Download2.count
