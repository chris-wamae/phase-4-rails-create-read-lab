class PlantsController < ApplicationController
  wrap_parameters format: []
     def index
        all_plants = Plant.all
        render json: all_plants
     end

     def show
        plant = Plant.find(params[:id])
        render json: plant
     end
     
     def create 
        new_plant = Plant.create(params.permit(:name, :price, :image))
        render json: new_plant,status:201

     end


end
