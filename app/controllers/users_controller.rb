class UsersController < ApplicationController

 # def users_params
 #   params.require(:movie).permit(:title, :rating, :description, :release_date)
 # end

  def new
    # default: render 'new' template
  end

#  def create
#    @user = User.create!(movie_params)
#    flash[:notice] = "#{@movie.title} was successfully created."
#    redirect_to movies_path
#  end
end
