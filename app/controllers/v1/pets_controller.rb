class V1::PetsController < V1::BaseController
  def index
    @pets = Pet.all
    # params[:limit]
  end

  def create
    # TODO
  end

  def show
    @pet = Pet.find(params[:id])
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :tag)
  end
end