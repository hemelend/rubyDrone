# The Builder interface specifies the methods to create the different parts of the drone ojbect
class Builder
    # @abstract
    def produceEngine
        raise NotImplementedError, "${self.class} has not implemented method '${__method__}'"
    end

    # @abstract
    def produceGyroscope
        raise NotImplementedError, "${self.class} has not implemented method '${__method__}'"
    end

    # @abstract
    def produceOrientationSensor
        raise NotImplementedError, "${self.class} has not implemented method '${__method__}'"
    end


end