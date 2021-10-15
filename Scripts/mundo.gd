extends Node2D

var pre_coelho = preload("res://Scenes/coelho.tscn")
var tempo = 0

func _ready():
	pass

func _process(delta):
	tempo += delta
	if tempo > rand_range(1, 2.5):
		criarCoelho()
		tempo = 0

func criarCoelho():
	var coelho = pre_coelho.instance()
	coelho.position = Vector2(rand_range(40, 560), 900)
	coelho.vel += rand_range(4.5, 6.5)
	coelho.pos_final = rand_range(500, 800)
	self.add_child(coelho)
