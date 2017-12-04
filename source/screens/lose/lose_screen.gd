extends "res://screens/abstract_screen.gd"

func _ready():
	sfx_player.set_stream(sfx_player.lose)
	sfx_player.play()
	for b in $Buttons.get_children():
		b.connect("button_up", self, "_on_button_down")
	
func _on_try_again():
	player.reset_values()
	change_scene()

func _on_quit():
	get_tree().quit()

func _on_back_main_menu():
	player.reset_values()
	change_scene("res://screens/main/main_screen.tscn")
