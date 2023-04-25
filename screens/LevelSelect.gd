extends Screen

signal back
signal go

onready var sprite = $Sprite
onready var tween = $Tween
onready var TSB = $TouchScreenButton
onready var TSB2 = $TouchScreenButton2
onready var TSB4 = $TouchScreenButton4
onready var TSB5 = $TouchScreenButton5
onready var Lock2 = $Lock2
onready var Lock3 = $Lock3
onready var Lock4 = $Lock4

var lev2 = false
var lev3 = false
var lev4 = false
var ColeShip = preload("res://assets/images/ColeTests/ship.png")
var ChhimiShip = preload("res://assets/images/ChhimiTests/ship.png")
var KyleShip = preload("res://assets/images/KyleTests/ship.png")
var ZacShip = preload("res://assets/images/ZacTests/ship.png")


# Called when the node enters the scene tree for the first time.
func _ready():
	sprite.texture = ColeShip
	if lev2:
		Lock2.hide()
		sprite.texture = ChhimiShip
	if lev3:
		Lock3.hide()
		sprite.texture = KyleShip
	if lev4:
		Lock4.hide()
		sprite.texture = ZacShip
	
	
	navigation_buttons.append(
		NavigationButton.new($TouchScreenButton, "", "")
	)
	navigation_buttons.append(
		NavigationButton.new($TouchScreenButton2, "", "")
	)
	navigation_buttons.append(
		NavigationButton.new($TouchScreenButton4, "", "")
	)
	navigation_buttons.append(
		NavigationButton.new($TouchScreenButton5, "", "")
	)
	navigation_buttons.append(
		NavigationButton.new($BackButton, "go", "game")
	)
	navigation_buttons.append(
		NavigationButton.new($BackButton2, "back", "go_back")
	)
	connect_button_signals()
	
	# Connect the TouchScreenButton3's pressed signal to move_sprite function
	TSB.connect("pressed", self, "_on_TouchScreenButton_pressed")
	TSB2.connect("pressed", self, "_on_TouchScreenButton2_pressed")
	TSB4.connect("pressed", self, "_on_TouchScreenButton4_pressed")
	TSB5.connect("pressed", self, "_on_TouchScreenButton5_pressed")

	
# Connect the TouchScreenButton3's pressed signal to move_sprite function
func _on_TouchScreenButton2_pressed():
	if lev2:
		tween.interpolate_property(
			sprite,
			"position",
			sprite.position,
			$p2Place.position,
			1.0,
			Tween.TRANS_LINEAR,
			Tween.EASE_OUT
		)
		# Start the Tween
		tween.start()
		
func _on_TouchScreenButton_pressed():
	tween.interpolate_property(
		sprite,
		"position",
		sprite.position,
		$p1Place.position,
		1.0,
		Tween.TRANS_LINEAR,
		Tween.EASE_OUT
	)
	# Start the Tween
	tween.start()
		
func _on_TouchScreenButton4_pressed():
	if lev3:
		tween.interpolate_property(
			sprite,
			"position",
			sprite.position,
			$p3Place.position,
			1.0,
			Tween.TRANS_LINEAR,
			Tween.EASE_OUT
		)
		# Start the Tween
		tween.start()
		
func _on_TouchScreenButton5_pressed():
	if lev4:
		tween.interpolate_property(
			sprite,
			"position",
			sprite.position,
			$p4Place.position,
			1.0,
			Tween.TRANS_LINEAR,
			Tween.EASE_OUT
		)
		# Start the Tween
		tween.start()