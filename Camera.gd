extends Camera2D
class_name MainCamera

var _previousPosition: Vector2 = Vector2(0, 0);
var _moveCamera = false;

func _unhandled_input(event: InputEvent):
	if event is InputEventMouseButton:
	    	get_tree().set_input_as_handled();
	    	if event.is_pressed():
	        		_previousPosition = event.position;
	        		_moveCamera = true;
	    	else:
	        _moveCamera = false;
	elif event is InputEventMouseMotion && _moveCamera:
		    get_tree().set_input_as_handled();
		    position += (_previousPosition - event.position);
		    _previousPosition = event.position;
