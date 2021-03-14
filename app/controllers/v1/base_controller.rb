class V1::BaseController < ActionController::API
  after_action { pagy_headers_merge(@pagy) if @pagy }
  
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  private
  
  def not_found(exception)
    render json: { error: exception.message }, status: :not_found
  end
end
