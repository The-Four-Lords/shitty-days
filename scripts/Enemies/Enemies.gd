extends Node

#Función central que se utiliza por todos los enemigos para restar vida al jugador.
# recibe por parámetro el total de daño a realizar.
func hitPlayer(damage):
	emit_signal("playerHitted", damage)
