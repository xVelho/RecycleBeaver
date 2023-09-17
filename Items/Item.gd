extends Area2D

func _ready():
	pass

func _on_Item_body_entered(body):
	if body.name == "Player":
		Global.items_collected += 1
		var item_name = name
		var item_panel = get_parent().get_parent().get_parent().get_node("CanvasLayer/"+str(name))
		item_panel.visible = true
		queue_free()
