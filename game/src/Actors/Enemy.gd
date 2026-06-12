extends CharacterBody2D

@export var speed := Vector2(400.0, 500.0)
@export var gravity := 3500.0
@export var score := 100

@onready var stomp_area: Area2D = $StompArea2D

var direction := 1
var action_timer := 0.0

var dash_timer := 0.0
var dash_duration := 0.1
var dash_multiplier := 5.0

func _ready() -> void:
	randomize()
	action_timer = randf_range(0.5, 2.0)

func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta

	if is_on_wall():
		direction *= -1

	if dash_timer > 0 && is_on_floor():
		dash_timer -= delta
		velocity.x = direction * speed.x * dash_multiplier
	else:
		velocity.x = direction * speed.x

	action_timer -= delta
	if action_timer <= 0:
		random_action()
		action_timer = randf_range(0.5, 1.0)

	move_and_slide()

func random_action() -> void:
	match randi() % 3:
		0:
			if is_on_floor():
				action_timer = randf_range(1.0, 3.0)
				velocity.y = -speed.y*action_timer
		1:
			dash_timer = dash_duration

func _on_StompArea2D_area_entered(area: Area2D) -> void:
	if area.global_position.y > stomp_area.global_position.y:
		return
	die()

func die() -> void:
	PlayerData.score += score
	queue_free()
