class_name HurtBox extends Area2D

@export var damage : int = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	area_entered.connect(AreaEntered)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func AreaEntered(area : Area2D) -> void:
	if (area is HitBox):
		area.TakeDamage(damage)
	pass
