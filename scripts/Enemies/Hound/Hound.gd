extends Area2D

const HITS = 1
const DAMAGE = 3
const TOTAL_DIVIDOR = 100 #Divisor del random.
const DROP = 7 #Número máximo para dropear

#Función que se lanza al chocar con un cuerpo (En este caso el del jugador, único con el que interactuará)
#Lanzamos el evento hitPlayer y pasamos el daño del NPC en si.
func _on_Area2D_body_entered(body):
	get_tree().call_group("Enemies", "hitPlayer", DAMAGE)


#Función para controlar la vida del HOUND en cuestión. Si el número de golpes recibidas es mayor al 
#total de golpes que puede recibir, llamará a lafunción de drop y desaparecerá (morirá)
func houndHitted(hits):
	releaseDrop()
	if hits > HITS:
		releaseDrop()
		queue_free()
	else:
		return hits+1


#Función que se encarga de llamar al dropper central de los enemigos.		
func releaseDrop():
	randomize()
	var luckyKill = randi() % TOTAL_DIVIDOR
	if luckyKill <= DROP :
		var potion = load("res://scenes/Potions/HealPotion.tscn").instance()
		potion.position.x = $".".position.x;
		$".".get_parent().add_child(potion)
