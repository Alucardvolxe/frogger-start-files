extends Node2D

var car_scene: PackedScene = preload("res://scenes/Car.tscn")



func _on_detect_body_entered(body: Node2D) -> void:
	print(body)
	print("Has entered")

func _on_car_timer_timeout() -> void:
	var car = car_scene.instantiate() as Area2D
	var pos_marker = $CarStartPosition.get_children().pick_random() as Marker2D
	
	car.position=pos_marker.position
	$Objects.add_child(car)

	car.connect("body_entered", go_to_title)

func go_to_title(body):
	print("Player car collision")
