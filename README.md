## Introducción (DRAFT):
Sprites: https://ansimuz.itch.io/gothicvania-cemetery
Juego de plataformas 2D ambientado en Castlevania.
El fin es superar los 2 niveles llenos de plataformas y enemigos.
Al final del primer nivel hay que entrar en el portal.
Al final del segundo nivel hay que acabar con el boss.
Tres tipos de enemigos y 1 tipo de boss:
- Lobo (hellhound)	
- Fantasma (ghost)
- Imp (hellbeast)
- El jefe final es el demonio Puigdemoni (demon)

## Table of contents
  * [CU 0. El juego](#cu-0-el-juego)
  * [CU 1. Level 1](#cu-1-level-1)
  * [CU 2. Level 2](#cu-2-level-2)
  * [CU 3. Player](#cu-3-player)
  * [CU 4.Items](#cu-4items)
  * [CU 4.1. Poción vida pequeña](#cu-41-poci-n-vida-peque-a)
  * [CU 4.2. Llave](#cu-42-llave)
  * [CU 5. Enemigos](#cu-5-enemigos)
  * [CU 5.1. Lobo](#cu-51-lobo)
  * [CU 5.2. Fantasma](#cu-52-fantasma)
  * [CU 5.3. Imp](#cu-53-imp)
  * [CU 5.4. Demon (boss)](#cu-54-demon--boss-)

____________________________________________________________________________________
### CU 0. El juego
- El juego acaba OK si:
	- Player consigue la llave del boss.
	- Al acabar OK se muestra imagen de los creadores
- El juego acaba KO si:
	- La vida del player llega a 0.
	- Aparece pantalla de Game Over con posibilidad de reiniciar
### CU 1. Level 1
	- Diseño del level uno, plataformas, enemigos y situación a elección del Diseñador
	- Enemigos: Lobo y Fantasma

### CU 2. Level 2
	- Diseño del level uno, plataformas, enemigos y situación a elección del Diseñador
	- Enemigos: Lobo, Fantasma, Imp y boss Puigdemoni
	
### CU 3. Player
	- Tiene 10 puntos de vida
	- Puede saltar y hacer salto doble
	- Golpea solo a melee, 1 sólo tipo de golpe. Causo 1 punto de daño a un enemigo. CD de 0.5 seg
	- Si cae al vacio pierde toda la vida, vida a 0.
	- Si su vida llega a 0, muere
	- Puede coger items
	- Tiene colision por todas partes con el terreno (no puede hacer como super mario)
	- Tocar a un enemigo sin estar atacando implica que el enemigo te haga daño (según diseño)
	- Tocar a un enemigo atacando implica que le haces daño por defecto

### CU 4.Items
### CU 4.1. Poción vida pequeña
	- Item que cura 3 puntos de vida al player instantaneamente
### CU 4.2. Llave
	- Al cogerla el juego acaba bien
	
### CU 5. Enemigos
 - Siempre que se le de un golpe al enemigo este parpadea
### CU 5.1. Lobo
	- Se mueve de izquierda a derecha bucle (spikeman)
	- Si toca al player le quita 1 de vida
	- Tiene 2 puntos de vida
	- El sprite asociado es "hellhound"
	- Al morir el sprite se difumina y desaparece
	- Drop de 1 Poción vida pequeña, random (10%), donde muere el enemigo

### CU 5.2. Fantasma
	- Se mueve de izquierda a derecha bucle. Va por el aire (nube)
	- Va apareciendo y desapareciendo en el trayecto
	- Estando hidden no puede lanzar la calavera
	- Si toca al player le quita 1 de vida
	- Lanza una calavera en vertical que si toca al player le quita 1 de vida. No se puede eliminar. Timing de 1seg (rayo)
	- Tiene 1 punto de vida
	- El sprite asociado es "ghost"
	- Al morir el sprite se difumina y desaparece
	- Drop de 1 Poción vida pequeña, random (20%), donde muere el enemigo
	
### CU 5.3. Imp
	- No se mueve
	- Tira bolas de fuego en horizontal que hacen 2 puntos de daño. No se puede elminar. Timing de 2seg
	- Cuando el player salta por encima(cerca) lanza una columna vertical de fuego. Tamaño determinado por el sprite. La columna de fuego quita 7 puntos de vida
	- El enemigo tiene 3 puntos de vida
	- Si toca al player le quita 1 de vida
	- Al morir el sprite se difumina y desaparece
	- El sprite asociado es "hellbeast"
	- Drop de 1 Poción vida pequeña, random (40%), donde muere el enemigo

### CU 5.4. Demon (boss)
	- Se mueve entre 5 puntos fijos de manera aleatoria y en una sala cerrada. No puede moverse 2 veces seguidas al mismo sitio
	- Cuando el jugador está cerca lanza "llamarada" (sprite), timing 2 segs y hace 2 puntos de daño.
	- Cuando el enemigo está cambiando de punto en el mapa lanza "calaveras" en vertical al igual que Fantasma.
	- Si toca al player le hace 1 de daño
	- Tiene 10 puntos de vida
	- El sprite asociado es "demon"
	- Al acabar con él dropeará un item "Llave"
	
	
	
	






