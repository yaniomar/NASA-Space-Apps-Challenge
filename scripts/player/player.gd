extends CharacterBody2D  # The main node for your player

# Variables to track health and hunger
var health: int = 100

# References to the health and hunger bars (These are node paths in your scene)
@onready var health_bar: ProgressBar = $Control/HealthBar

func _ready() -> void:
	
	# Update UI bars initially
	update_bars()

# Function to decrease hunger over time
func _decrease_hunger() -> void:
	
	# Update the UI bars to reflect current values
	update_bars()

	# Check if health reaches 0
	if health <= 0:
		_player_dead()

# Function to update the UI bars in the UI node
func update_bars() -> void:
	health_bar.value = health  # Set health bar value

# Function to handle player death
func _player_dead() -> void:
	print("Player is dead")
	# Add your game over or respawn logic here
