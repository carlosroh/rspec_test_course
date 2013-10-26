class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(valid_attributes)
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  protected
    def valid_attributes
      params.require(:user).permit(:username,
                    :first_name)
    end
end
