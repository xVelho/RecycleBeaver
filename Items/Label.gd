extends Label

func _ready():
	text = str(Global.items_collected) + "/" + str(Global.items_total) + " Items Collected"
	
func _process(delta):
	text = str(Global.items_collected) + "/" + str(Global.items_total) + " Items Collected"
