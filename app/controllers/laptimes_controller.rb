class LaptimesController < ApplicationController

    def new 
        @laptime = Laptime.new
        @tracks = Track.all
    end


    def create 
    end
end
