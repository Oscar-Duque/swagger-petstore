class V1::PetsController < V1::BaseController
  def index
    @pets = Pet.all
  end
end