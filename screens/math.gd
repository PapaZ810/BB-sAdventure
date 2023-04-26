extends RichTextLabel



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	load_csv()

func load_csv() :
	var file = File.new()
	var math_data = file.open("res://math.csv",file.READ)
	file.open(math_data, File.READ)
	var contents = file.get_as_text()
	file.close()

	var rows = contents.split("\n")
	var data = []

	for row in rows:
		data.append(row.split(","))

	return data
	
