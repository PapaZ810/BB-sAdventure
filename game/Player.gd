extends Area2D

signal player_fire
signal refill 

export(int) var move_rate = 100
export(bool) var can_shoot = false setget set_can_shoot

var screen_size
var sprite_size
var num_lives = 3

func _ready():
	screen_size = get_viewport_rect().size
	sprite_size = $Sprite.texture.get_size()

func set_can_shoot(shoot_val):
	can_shoot = shoot_val

func _process(delta):
	var velocity = 0
	if Input.is_action_pressed("move_left"):
		velocity -= 1
	if Input.is_action_pressed("move_right"):
		velocity += 1
	if Input.is_action_just_pressed("fire"):
		emit_signal("player_fire")
		print('signal emitted player_fire')
	if Input.is_action_pressed("select"): # this works so we go 
		print("select pressed")
		emit_signal("refill") 
		print('signal emitted refill')
		#check if it is correct based on the question asked 
	
	position.x += velocity * move_rate * delta
	position.x = clamp(position.x, sprite_size.x / 2, screen_size.x - sprite_size.x / 2)
