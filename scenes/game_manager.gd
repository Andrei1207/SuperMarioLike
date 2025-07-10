extends Node

var score = 0
var coin_sound

func _ready():
	coin_sound = AudioStreamPlayer.new()
	add_child(coin_sound)
	coin_sound.stream = load("res://1_Coins.ogg")

func fruit_counter():
	score += 1
	coin_sound.play()
	print(score)

	if score == 8:
		print("Congratulations, you collected all the fruits!")
