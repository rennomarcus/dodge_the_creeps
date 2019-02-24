extends RigidBody2D

export (int) var MIN_SPEED = 150 # Minimum speed range
export (int) var MAX_SPEED = 250 # Maximum speed range
var MOB_TYPES = ["walk", "swim", "fly"]

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	$AnimatedSprite.animation = MOB_TYPES[randi() % MOB_TYPES.size()]
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Visibility_screen_exited():
	queue_free()
