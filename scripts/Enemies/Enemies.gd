extends Node

const TOTAL_DIVIDOR = 100 #Divisor del random.
const DROP = 7 #Número máximo para dropear

#Función central que se utiliza por todos los enemigos para restar vida al jugador.
# recibe por parámetro el total de daño a realizar.
func hitPlayer(damage):
	emit_signal("playerHitted", damage)


#Función que se encarga de generar el drop aleatorio de los mobs cuando son eliminados por el jugador.
func drop():
	randomize()
	var luckyKill = randi() % TOTAL_DIVIDOR
	if luckyKill <= DROP :
		pass #aqui generamos el drop!
