extends "res://screens/abstract_screen.gd"

func _ready():
	sfx_player.set_stream(sfx_player.win)
	sfx_player.play()
	$AnimationPlayer.play("text")
	$PlayAgain.connect("button_up", self, "_on_button_down")
func _on_play_again():
	player.reset_values()
	change_scene()
