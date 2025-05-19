extends Area2D

@export var speed: float = 400
@onready var animated_sprite = $AnimatedSprite2D

func _process(delta: float) -> void:
	var direction := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	# Movimento
	position += direction * speed * delta

	
	# Atualiza a direção do sprite apenas no eixo X
	if direction.x != 0:
		animated_sprite.flip_h = direction.x < 0
	
	# Mantém a animação idle sempre rodando
	animated_sprite.play("idle")
