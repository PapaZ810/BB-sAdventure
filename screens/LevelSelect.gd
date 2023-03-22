extends Screen

signal planet_1_pressed
signal planet_2_pressed
signal back
signal planet_3_pressed
signal planet_4_pressed
signal go

onready var sprite = $Sprite

# Called when the node enters the scene tree for the first time.
func move_sprite():
	sprite.position = $TouchScreenButton2.position
	
func _ready():
	navigation_buttons.append(
		NavigationButton.new($TouchScreenButton, "planet_1_pressed", "game")
	)
	navigation_buttons.append(
		NavigationButton.new($TouchScreenButton2, "planet_2_pressed", "game")
	)
	navigation_buttons.append(
		NavigationButton.new($TouchScreenButton4, "planet_3_pressed", "game")
	)
	navigation_buttons.append(
		NavigationButton.new($TouchScreenButton5, "planet_4_pressed", "game")
	)
	navigation_buttons.append(
		NavigationButton.new($TouchScreenButton6, "go", "game")
	)
	connect_button_signals()

func _on_TouchScreenButton3_pressed():
	move_sprite()
