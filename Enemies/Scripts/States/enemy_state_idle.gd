class_name EnemyStateIdle extends EnemyState

@export var animation_name : String = "idle"
@export_category("AI")
@export var state_duration_min : float = 0.5
@export var state_duration_max : float = 1.5
@export var next_state : EnemyState

var _timer : float = 0.0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func Init() -> void:
	pass

## What happens when the player enters this State?
func Enter() -> void:
	enemy.velocity = Vector2.ZERO
	_timer = randf_range(state_duration_min, state_duration_max)
	enemy.UpdateAnimation(animation_name)
	pass

## What happens when the player enters this State?
func Exit() -> void:
	pass

## What happens during the _process update in this State?
func Process(_delta : float) -> EnemyState:
	_timer -= _delta
	if (_timer <= 0):
		return next_state
	return null

## What happens during the _physics_process update in this State?
func Physics(_delta : float) -> EnemyState:
	return null

