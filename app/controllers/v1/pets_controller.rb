class V1::PetsController < V1::BaseController

  def index
    @pets = Pet.all
    # params[:limit]
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      render :show, status: :created
    else
      render_error
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :tag)
  end

  def render_error
    render json: { errors: @pet.errors.full_messages }, status: :unprocesable_entity
  end
end
