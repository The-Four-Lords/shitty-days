extends KinematicBody2D

var motion = Vector2(0,0)
const UP = Vector2(0,-1)
var SPEED = 100
var JUMP = 200

signal animate

func _ready():
	pass # Replace with function body.
	
func _physics_process(delta):
	move()
	animate()
	move_and_slide(motion, UP)

func move():	
	if Input.is_action_pressed("left") and not Input.is_action_pressed("right"):
		print("left")
		motion.x = -SPEED
	elif Input.is_action_pressed("right") and not Input.is_action_pressed("left"):
		print("right")
		motion.x = SPEED
	else:
		motion.x = 0
		
	if Input.is_action_pressed("jump"):
		print("jump")
		motion.y = -JUMP
	else:
		motion.y = 0

func animate():
	#print("holdLeft:",holdLeft," holdRight:",holdRight," holdJump:",holdJump," holdAttack:",holdAttack)
	emit_signal("animate", motion, Input.is_action_pressed("attack"))