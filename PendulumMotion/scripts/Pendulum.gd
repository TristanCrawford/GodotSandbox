extends Node2D

export(Font) var font

onready var pivot =  $pivot
onready var bob = $bob

func _process(delta):
	update()

func _draw():
	draw_string(font, bob.position + Vector2(-10, 16), "Test")
	draw_line(pivot.position, bob.position, Color(0xFFFFFFFF), 2)
	draw_line(pivot.position - Vector2(10, 0), pivot.position + Vector2(10, 0), Color(0xFFFFFFFF), 8)
	draw_circle(bob.position, 4, Color(0xFFFFFFFF))