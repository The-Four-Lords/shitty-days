extends AnimatedSprite

func _ready():
	pass # Replace with function body.

func _on_Player_animate(motion, isAttack1, isAttack2):	
	if isAttack1:
		play("attack1")
	elif isAttack2:
		play("attack2")
	elif motion.y < 0:
		play("jump")
	elif motion.x < 0:
		flip_h = true
		play("run")
	elif motion.x > 0:
		flip_h = false
		play("run")
	else:
		play("stand")
