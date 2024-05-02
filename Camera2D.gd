extends Camera2D

func _ready():
	pass

func _process(delta):
	offset.x = $"../Body".position.x
	offset.y = $"../Body".position.y
