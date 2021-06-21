
require File.expand_path('../Director.rb', __FILE__)
require File.expand_path('../DroneBuilder.rb', __FILE__)

#  The director has the standard recipes for build drone models 
director = Director.new
builder  = DroneBuilder.new
director.builder = builder

# Building standard minimal drone
puts 'Standard Minimal Drone: '
director.buildMinimalViableDrone
droneBasic = builder.drone
droneBasic.listOfParts

puts "\n\n"

# Building standard full drone
puts 'Full Viable Drone: '
director.buildFullFeaturedDrone
droneFull = builder.drone
droneFull.listOfParts

puts "\n\n"

# Building custom drone, no needed the director
puts 'Custom Full Viable Drone: '
builder.produceEngine
builder.produceEngine
builder.produceEngine
builder.produceEngine
builder.produceGyroscope
builder.produceOrientationSensor
drone = builder.drone
drone.listOfParts

# lets make a small basic routine
drone.takeOff
drone.getStatus

drone.moveForward
drone.getStatus
drone.moveBack
drone.getStatus
drone.moveLeft
drone.getStatus
drone.moveRight
drone.getStatus
drone.moveUp
drone.getStatus
drone.moveDown
drone.getStatus

drone.land
drone.getStatus

