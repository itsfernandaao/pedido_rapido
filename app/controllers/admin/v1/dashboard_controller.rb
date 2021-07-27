module Admin::V1
  class DashboardController < ApiController
    def index
      render json: { message: 'Uhull' }
    end
  end
end