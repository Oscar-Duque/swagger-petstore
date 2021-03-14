class V1::PetsController < V1::BaseController
  include Pagy::Backend

  after_action { pagy_headers_merge(@pagy) if @pagy }

  def index
    @pagy, @pets = pagy(Pet.all)
    scaffold_url = pagy_metadata(@pagy, url=true)[:scaffold_url].to_s
    @next_link = scaffold_url.sub('__pagy_page__', pagy_metadata(@pagy)[:next].to_s)
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
