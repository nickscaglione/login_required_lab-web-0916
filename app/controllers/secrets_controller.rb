class SecretsController < ApplicationController


  def show
    if User.find_by(name: current_user)
      render "/secrets/secret.html"
    else
      redirect_to '/login'
    end
  end


  # private
  #
  # def require_login
  #   redirect_to '/login' unless current_user
  # end

end
