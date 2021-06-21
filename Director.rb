class Director
    # @return [Builder]
    attr_accessor :builder

    def initialize
        @builder = nil
    end

    def builder=(builder)
        @builder = builder
    end

    def buildMinimalViableDrone
        @builder.produceEngine
    end

    def buildFullFeaturedDrone
        @builder.produceEngine
        @builder.produceGyroscope
        @builder.produceOrientationSensor
    end
    
end