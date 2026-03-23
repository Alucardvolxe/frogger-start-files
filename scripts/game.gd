extends Node2D

var car_scene: PackedScene = preload("res://scenes/Car.tscn")



func _on_detect_body_entered(body: Node2D) -> void:
	print(body)
	print("Has entered")

func _on_car_timer_timeout() -> void:
	var car = car_scene.instantiate()
	$Objects.add_child(car)