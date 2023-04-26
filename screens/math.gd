extends RichTextLabel

var quest = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	load_csv()

func load_csv() -> void:
	var file = File.new()
	var error = file.open("res://screens/Book1.csv", File.READ)

	if error == OK:
		while not file.eof_reached():
			var line = file.get_line()
			quest.append(line)

		file.close()

	else:
		print("Error opening file:", error)
