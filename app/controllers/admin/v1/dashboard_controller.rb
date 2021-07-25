module Admin::V1
  class DashboardController < ApplicationController
    include Authenticable
    def index
      render json: { message: 'Uhull' }
    end
  end
end