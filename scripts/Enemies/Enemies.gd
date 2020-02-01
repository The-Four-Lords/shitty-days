extends Node2D

func _ready():
	add_to_group("Enemies")
#Función central que se utiliza por todos los enemigos para restar vida al jugador.
# recibe por parámetro el total de daño a realizar.
func hitPlayer(damage=1):
	get_tree().call_group("Gamestate", "hurt", damage)

#Función central que se utiliza en todos los enemigos, recibe por parametro el enemigo en si.
#De esta manera internamente se llama a la funcion que gestiona el daño de cada enemigo.	
func hitEnemy(enemy):
	enemy.hitted()

#Función llamada desde los enemigos al morir, genera la pocion.
func drop(position, node):
	var potion = load("res://scenes/Potions/HealPotion.tscn").instance()
	potion.position.x = position
	node.get_parent().add_child(potion)
