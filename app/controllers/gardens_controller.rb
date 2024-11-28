class GardensController < ApplicationController
  def show
    # any data that you want on the view
    # needs to be collected from the database here
    # i.e create the variables you want on the show page (app/views/gardens/show.html.erb)
    @garden = Garden.find(params[:id])
  end
end
