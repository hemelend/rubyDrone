class Drone
    def initialize
        @parts = []
        @status = 'off'
    end

    # @param [String] part
    def add(part)
        @parts << part
    end

    ###
    # @description:  show the parts on the drone object
    # 
    # @return: string 
    ###
    def listOfParts
        print "Drone parts: #{@parts.join(', ')}\n"
    end

    def takeOff
        @status = 'on'
        print 'take the dron off in the air' + "\n"
    end

    def moveForward
        @status = 'moving'
        print 'moving forward' + "\n"
    end

    def moveBack
        @status = 'moving'
        print 'moving backward' + "\n"
    end

    def moveLeft
        @status = 'moving'
        print 'moving left' + "\n"
    end

    def moveRight
        @status = 'moving'
        print 'moving right' + "\n"
    end

    def moveUp
        @status = 'moving'
        print 'moving up' + "\n"
    end

    def moveDown
        @status = 'moving'
        print 'moving down' + "\n"
    end

    def stabilize
        @status = 'hovering'
        print 'makes the drone hover' + "\n"
    end

    def getStatus
        print "current drone status is: #{@status}\n"
    end

    def land
        stabilize
        # while gyroscope.vectorY > 0
            moveDown
        # end
        
        print 'landing Drone to origin' + "\n"
        @status = 'off'
    end
end