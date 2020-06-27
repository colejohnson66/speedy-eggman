extends Spatial
class_name Blupi


var body
var armRightUpper
var armRightLower
var armLeftUpper
var armLeftLower
var legRight
var legLeft


func _ready():
	var material = SpatialMaterial.new()
	material.albedo_color = Color(0.75, 0.75, 0)
	
	body = MeshInstance.new()
	var bodyObj = load("res://assets/blupi/body.obj")
	bodyObj.surface_set_material(0, material)
	body.mesh = bodyObj
	add_child(body)
	
	armRightUpper = MeshInstance.new()
	var armRightUpperObj = load("res://assets/blupi/arm-right-upper.obj")
	armRightUpperObj.surface_set_material(0, material)
	armRightUpper.mesh = armRightUpperObj
	add_child(armRightUpper)
	
	armRightLower = MeshInstance.new()
	var armRightLowerObj = load("res://assets/blupi/arm-right-lowerfist.obj")
	armRightLowerObj.surface_set_material(0, material)
	armRightLower.mesh = armRightLowerObj
	add_child(armRightLower)
	
	armLeftUpper = MeshInstance.new()
	var armLeftUpperObj = load("res://assets/blupi/arm-right-upper.obj")
	armLeftUpperObj.surface_set_material(0, material)
	armLeftUpper.mesh = armLeftUpperObj
	armLeftUpper.transform = Transform(Vector3(1, 0, 0), Vector3(0, 1, 0), Vector3(0, 0, -1), Vector3(0, 0, 0))
	add_child(armLeftUpper)
	
	armLeftLower = MeshInstance.new()
	var armLeftLowerObj = load("res://assets/blupi/arm-right-lowerfist.obj")
	armLeftLowerObj.surface_set_material(0, material)
	armLeftLower.mesh = armLeftLowerObj
	armLeftLower.transform = Transform(Vector3(1, 0, 0), Vector3(0, 1, 0), Vector3(0, 0, -1), Vector3(0, 0, 0))
	add_child(armLeftLower)
	
	legRight = MeshInstance.new()
	var legRightObj = load("res://assets/blupi/leg-right.obj")
	legRightObj.surface_set_material(0, material)
	legRight.mesh = legRightObj
	add_child(legRight)
	
	legLeft = MeshInstance.new()
	var legLeftObj = load("res://assets/blupi/leg-right.obj")
	legLeftObj.surface_set_material(0, material)
	legLeft.mesh = legLeftObj
	legLeft.transform = Transform(Vector3(1, 0, 0), Vector3(0, 1, 0), Vector3(0, 0, -1), Vector3(0, 0, 0))
	add_child(legLeft)

func _process(delta):
	self.rotate(Vector3(0, 1, 0), -0.1)
