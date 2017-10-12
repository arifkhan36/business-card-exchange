class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
  end
  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice:'Post was successfully created.'}
        format.json {render :show, status: :created, location:@user}
        else
      format.html { render :new }
      format.json{ render json: @user.errors, status: :unprocessable_entity }
     end
    end
  end
      def new
     @user = User.new
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to @businesscard
  end

end
