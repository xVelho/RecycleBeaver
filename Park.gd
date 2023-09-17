extends Node2D

func _on_Transporter_body_entered(body):
	if body.name == "Player" && Global.items_collected == 6:
		get_tree().change_scene("res://Sorting.tscn")
