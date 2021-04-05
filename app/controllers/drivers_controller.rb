class DriversController < ApplicationController
     
    # def index
    #     @drivers = Driver.all 
    # end
    

    def new 
        @driver = Driver.new
    end


    def create 
        @driver = Driver.new(driver_params)
        if @driver.save
            session[:driver_id] = @driver.id 
            redirect_to driver_path(@driver)
        else    
           
            render :new
        end
    end
    

    def show 
        find_driver
    end


    # def edit 
    #     find_driver
    # end

    # def update 
    #     find_driver
    #     @driver.update(driver_params)
    #     redirect_to driver_path(@driver)
    # end



    private

    def driver_params
        params.require(:driver).permit(:name, :password)
    end

    def find_driver
        @driver = Driver.find(params[:id])
    end
end
