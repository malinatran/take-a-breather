class MiscellaneousController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  def index
    @home_page = true
    if current_user
      redirect_to '/dashboard'
    end
  end

  def dashboard
  end

end