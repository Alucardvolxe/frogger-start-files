extends Node2D




func _on_detect_body_entered(body: Node2D) -> void:
	print(body)
	print("Has entered")