extends Control

var correct_sorting = {
	"StyrofoamCup" : "Trash",
	"Pizzabox" : "Trash",
	"Fork" : "Trash",
	"BananaPeel" : "Compost",
	"WaterBottle" : "Recycle",
	"CrumpledPaper" : "Recycle"
}

var item_order = [ "Pizzabox","BananaPeel", "WaterBottle", "StyrofoamCup", "CrumpledPaper", "Fork"]
var item_num = 0

func _ready():
	get_node("StyrofoamCup").visible = false
	get_node("Pizzabox").visible = false
	get_node("Fork").visible = false
	get_node("BananaPeel").visible = false
	get_node("WaterBottle").visible = false
	get_node("CrumpledPaper").visible = false
	get_node("TryAgain").visible = false

func reset_items():
	get_node("StyrofoamCup").visible = false
	get_node("Pizzabox").visible = false
	get_node("Fork").visible = false
	get_node("BananaPeel").visible = false
	get_node("WaterBottle").visible = false
	get_node("CrumpledPaper").visible = false
	get_node("TryAgain").visible = false
	get_node("Correct").visible = false

func show_try_again():
	get_node("TryAgain").visible = true

func show_correct():
	get_node("Correct").visible = true

func off_correct():
	get_node("Correct").visible = false

func _process(delta):
	if item_num >= 6:
		get_tree().change_scene("res://Credit.tscn")
	else:
		get_node(item_order[item_num]).visible = true

func _on_Recycle_pressed():
	if correct_sorting[item_order[item_num]] == get_node("Recycle").name:
		item_num += 1
		reset_items()
		show_correct()
	else:
		off_correct()
		show_try_again()

func _on_Trash_pressed():
	if correct_sorting[item_order[item_num]] == get_node("Trash").name:
		item_num += 1
		reset_items() 
		show_correct()
	else:
		off_correct()
		show_try_again()

func _on_Compost_pressed():
	if correct_sorting[item_order[item_num]] == get_node("Compost").name:
		item_num += 1
		reset_items() 
		show_correct()
	else:
		off_correct()
		show_try_again()
