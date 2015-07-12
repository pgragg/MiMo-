class WelcomeController < ApplicationController
  skip_before_filter :authenticate_user! 
  def index
    if current_user
      @group = current_user.groups.first
    end
  end

  def landing 
    if current_user
      redirect_to welcome_index_path
    end 
  end 
end
