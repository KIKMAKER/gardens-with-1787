class PlantsController < ApplicationController
  def create
    plant = Plant.new(plant_params)
    # plant.garden_id = Garden.find(params[:garden_id]).id
    garden = Garden.find(params[:garden_id])
    plant.garden = garden
    if plant.save
      redirect_to garden_path(garden), notice: "plant added"
    else
      render 'gardens/show', status: :unprocessable_entity
    end
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end
end
