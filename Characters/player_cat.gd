extends CharacterBody2D

@export var speed = 400

func _physics_process(delta):
	#Get Input Direction
	get_input()
	move_and_slide()
	
func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed
	print(input_direction)
