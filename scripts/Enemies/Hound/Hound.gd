extends Area2D

const DAMAGE = 1
const TOTAL_DIVIDOR = 100 #Divisor del random.
const DROP = 10 #Número máximo para dropear

var live = 2

#Función que se lanza al chocar con un cuerpo (En este caso el del jugador, único con el que interactuará)
#Lanzamos el evento hitPlayer y pasamos el daño del NPC en si.
func _on_Area2D_body_entered(body):
	get_tree().call_group("Enemies", "hitPlayer", DAMAGE)


#Función para controlar la vida del HOUND en cuestión. Si el número de golpes recibidas es mayor al 
#total de golpes que puede recibir, llamará a lafunción de drop y desaparecerá (morirá)
func hitted(hits = 1):
	live = live-hits
	if live <= 0:
		calculateDrop()
		queue_free()

#Función que se encarga de llamar al dropper central de los enemigos en caso de suerte.		
func calculateDrop():
	randomize()
	var luckyKill = randi() % TOTAL_DIVIDOR
	if luckyKill <= DROP :
		get_tree().call_group("Enemies", "drop", $".".position.x, $".")
