extends AnimatedSprite

func _ready():
	pass # Replace with function body.

func _on_Player_animate(motion, isAttack):
	if isAttack:
		play("attack")
	elif motion.y < 0:
		play("jump")
	elif motion.x < 0:
		flip_h = true
		play("run")
	elif motion.x > 0:
		flip_h = false
		play("run")
	else:
		play("idle")
