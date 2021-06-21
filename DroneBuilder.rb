require File.expand_path('../Builder.rb', __FILE__)
require File.expand_path('../Drone.rb', __FILE__)


class DroneBuilder < Builder
    ###
    # @description: 
    # @param {any}: 
    # @return {any}: 
    ###
    def initialize
        reset    
    end

    def reset
        @drone = Drone.new
    end

    def drone
        drone = @drone
        reset
        drone
    end

    def produceEngine
        @drone.add('Engine')
    end

    def produceGyroscope
        @drone.add('gyroscope')
    end

    def produceOrientationSensor
        @drone.add('orientation_sensor')
    end
end