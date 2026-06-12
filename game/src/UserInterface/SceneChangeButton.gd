extends Button

@export_file var next_scene_path: = ""


func _on_button_up() -> void:
	PlayerData.reset_data()
	get_tree().change_scene_to_file(next_scene_path)
