extends Area2D

const HITS = 1
const DAMAGE = 3

#Función que se lanza al chocar con un cuerpo (En este caso el del jugador, único con el que interactuará)
#Lanzamos el evento hitPlayer y pasamos el daño del NPC en si.
func _on_Area2D_body_entered(body):
	get_tree().call_group("Enemies", "hitPlayer", DAMAGE)


#Función para controlar la vida del HOUND en cuestión. Si el número de golpes recibidas es mayor al 
#total de golpes que puede recibir, llamará a lafunción de drop y desaparecerá (morirá)
func houndHitted(hits):
	if hits > HITS:
		releaseDrop()
		queue_free()
	else:
		return hits+1


#Función que se encarga de llamar al dropper central de los enemigos.		
func releaseDrop():
	get_tree().call_group("Enemies", "drop")
