class Api::V1::PlanetsController < Api::V1::BaseController
  def index
    respond_with Planet.all
  end

  def create
    respond_with :api, :v1, Planet.create(planet_params)
  end

  def destroy
    respond_with Planet.destroy(params[:id])
  end

  def update
    planet = Planet.find(params["id"])
    planet.update_attributes(planet_params)
    respond_with planet, json: planet
  end

  private

  def planet_params
    params.require(:planet).permit(:id, :name)
  end
end
