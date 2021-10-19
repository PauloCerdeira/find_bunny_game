extends Sprite

var pos_inicial = 0
export var pos_final = 500
var subir = true
export var vel = 1
var pre_cacos = preload("res://Scenes/cacos.tscn")

func _ready():
	pos_inicial = position.y
	pass

func _process(_delta):
	if position.y < pos_inicial - pos_final:
		subir = false
	
	if subir:
		self.position.y -= vel
	else:
		self.position.y += vel * 0.5

func _on_Button_button_down():
	$"../audio".play()
	#same as:
	#get_parent().audio.play()
	criarCacos()
	self.queue_free()

func criarCacos():
	var cacos = pre_cacos.instance()
	cacos.position = self.position
	get_parent().add_child(cacos)
