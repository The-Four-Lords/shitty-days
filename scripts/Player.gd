extends KinematicBody2D

var motion = Vector2(0,0)
var attackType = ""
const UP = Vector2(0,-1)
const GRAVITY = 10
var SPEED = 200
var JUMP = 300
const WORLD_LIMIT = 4000

signal animate

func _ready():
	pass # Replace with function body.
	
func _physics_process(delta):
	apply_gravity()
	move()
	animate()
	move_and_slide(motion, UP) #execute motion

func apply_gravity():
	if is_on_floor() and motion.y > 0: # no apply gravity
		motion.y = 0
	else:
		motion.y += GRAVITY

func move():
	if Input.is_action_pressed("jump") and is_on_floor():
		motion.y = -JUMP

	if Input.is_action_pressed("left") and not Input.is_action_pressed("right"):
		motion.x = -SPEED
	elif Input.is_action_pressed("right") and not Input.is_action_pressed("left"):
		motion.x = SPEED
	else:
		motion.x = 0
	
	#If is a floor attack no move
	if Input.is_action_pressed("attack")  and is_on_floor():
		motion.x = 0


func animate():	
	#print("holdLeft:",holdLeft," holdRight:",holdRight," holdJump:",holdJump," holdAttack:",holdAttack)
	emit_signal("animate", motion, Input.is_action_pressed("attack"))
