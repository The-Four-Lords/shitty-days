extends Node2D

const HEALTH_CHANGER_ITEMS = {'HEAL_POTION': 3}

var currentLevel = 0
var player = {
	health: 10,
	maxHealth: 10,
	items: []
}

func _ready():
    add_to_group("Gamestate")
    update_GUI()

# Call this function to iflict damage to the player, if no damage is provided the default damage is 1 point
func hurt(damage = 1):
    player.health -= damage
    update_GUI()
	# If needed call PLAYER API to display an animation
    #$Player.hurt(damage)
    if player.health <= 0:
        end_game()

func heal(item):
	if HEALTH_CHANGER_ITEMS[item]:
		player.health += HEALTH_CHANGER_ITEMS[item]
		if player.health > player.maxHealth: player.health = player.maxHealth
		# TODO Call some ITEM API to display an animation/sound
		#$Items/Item.doYourThing()

func addItem(item):
	player.items.append(item)
	update_GUI()
	
func useItem(item):
	var itemPos = player.items.find(item)
	if itemPos > -1:
		player.items.remove(itemPos)
		update_GUI()

func hasBossKey():
	return player.items.find('BOSS_KEY') > -1

# Updates the UI, currently are on scope the player's health and item display
func update_GUI():
    get_tree().call_group("GUI", "update_GUI", player.health, player.items)

func end_game():
    get_tree().change_scene("res://Levels/EndGame.tscn")

func win_game():
    get_tree().change_scene("res://Levels/Victory.tscn")