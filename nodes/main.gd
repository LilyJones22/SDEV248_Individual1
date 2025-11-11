extends Node2D


func _on_entrance_overworld_body_entered(body):
	if body.is_in_group("player"):
		body.global_position = $SecretArea/EntranceSecret.global_position
		
	

func _on_exit_secret_body_entered(body):
	if body.is_in_group("player"):
		body.global_position = $SecretArea/ExitOverworld.global_position
