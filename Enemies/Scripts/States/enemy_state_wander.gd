class_name EnemyStateWander extends EnemyState

@export var animation_name : String = "walk"
@export var wander_speed : float = 50.0

@export_category("AI")
@export var state_animation_duration : float = 0.5
@export var state_cycles_min : int = 1
@export var state_cycles_max : int = 3
@export var next_state : EnemyState

var _timer : float = 0.0
var _direction : Vector2
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func Init() -> void:
	pass

## What happens when the player enters this State?
func Enter() -> void:
	_timer = randi_range(state_cycles_min, state_cycles_max) * state_animation_duration
	var rand = randi_range(0, 3)
	_direction = enemy.DIR_4[rand]
	enemy.velocity = _direction * wander_speed
	enemy.SetDirection(_direction)
	enemy.UpdateAnimation(animation_name)
	pass

## What happens when the player enters this State?
func Exit() -> void:
	pass

## What happens during the _process update in this State?
func Process(_delta : float) -> EnemyState:
	_timer -= _delta
	if _timer < 0:
		return next_state
	return null

## What happens during the _physics_process update in this State?
func Physics(_delta : float) -> EnemyState:
	return null

