# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
extends Screen

onready var mobile_inputs_scene = load("res://mobile_inputs.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	connect("out_of_ammo", self, "_on_out_of_ammo")

func _on_out_of_ammo():
	var mobile_inputs = mobile_inputs_scene.instance()
	add_child(mobile_inputs)
	mobile_inputs.show()

func show_mobile_inputs():
	emit_signal("show_mobile_inputs")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass

