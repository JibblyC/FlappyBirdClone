extends Sprite
var velocity = 2;

var farRightLimit = texture.get_width() * self.scale.x;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _process(delta):
	position.x -= velocity;
	checkOffCameraAndMoveBackGround();

	
	
func checkOffCameraAndMoveBackGround():
	if(self.position.x == farRightLimit * -1):
		self.position.x = farRightLimit;
	
	

