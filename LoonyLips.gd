extends Control



func _ready():
	var prompts = ["Yann", "banana", "tingly", "glam"]
	var story : String = "name %s noun %s adj %s adj %s "
	print( prompts)

	$VBoxContainer/DisplayText.text = (story % prompts)


func _on_LineEdit_text_entered(new_text):
	update_DisplayText(new_text)

func update_DisplayText(new_text):
	$VBoxContainer/DisplayText.text = new_text
	$VBoxContainer/HBoxContainer/LineEdit.clear()

func _on_TextureButton_pressed():
	var mytext : String = $VBoxContainer/HBoxContainer/LineEdit.text
	update_DisplayText(mytext)
