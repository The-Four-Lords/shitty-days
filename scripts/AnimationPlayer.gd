extends AnimatedSprite

func _ready():
	pass # Replace with function body.

func _on_Player_animate(motion, isAttack):
	if isAttack:
		print("attack")
		play("attack")
	elif motion.y < 0:
		print("jump")
		play("jump")
	elif motion.x < 0:
		print("left")
		flip_h = true
		play("run")
	elif motion.x > 0:
		print("right")
		flip_h = false
		play("run")
	else:
		play("idle")
