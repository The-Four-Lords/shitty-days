extends AnimatedSprite

func _ready():
	pass # Replace with function body.

func _on_Player_animate(motion, holdAttack):
	if motion.y < 0 and not holdAttack:
		play("jump")
	elif motion.x < 0 and not holdAttack:
		flip_h = true
		play("run")
	elif motion.x > 0 and not holdAttack:
		flip_h = false
		play("run")
	elif holdAttack:
		play("attack")
	else:
		play("stand")