class CarsController < ApplicationController
    def index
        @cars = Car.all
    end
    
    def show
        redirect_to :action => "index"
    end
    
    def new
        @car = Car.new
    end
    
    def edit
        @car = Car.find(params[:id])
    end
    
    def create
        @car = Car.new(car_params)
    
        if @car.save
            redirect_to @car
        else
            render 'new'
        end
    end
    
    def update
        @car = Car.find(params[:id])
        
        if @car.update(car_params)
            redirect_to @car
        else
            render 'edit'
        end
    end
    
    def destroy
        @car = Car.find(params[:id])
        @car.destroy
        
        redirect_to car_path
    end
    
    private
        def car_params
            params.require(:car).permit(:placa, :proprietario, :modelo, :ano)
        end
  
end
