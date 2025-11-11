extends Node2D


func _on_entrance_overworld_body_entered(body):
	if body.is_in_group("player"):
		body.global_position = $SecretArea/EntranceSecret.global_position
		
	

func _on_exit_secret_body_entered(body):
	if body.is_in_group("player"):
		body.global_position = $SecretArea/ExitOverworld.global_position


func _on_section_a_body_entered(body):
	if body.is_in_group("player"):
		body.take_damage()
		body.position = $OutOfBounds/SpawnA.position
	else:
		body.queue_free()

func _on_section_b_body_entered(body):
	if body.is_in_group("player"):
		body.take_damage()
		body.position = $OutOfBounds/SpawnB.position
	else:
		body.queue_free()

func _on_section_c_body_entered(body):
	if body.is_in_group("player"):
		body.take_damage()
		body.position = $OutOfBounds/SpawnC.position
	else:
		body.queue_free()
