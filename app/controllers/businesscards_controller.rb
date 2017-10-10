class BusinesscardsController < ApplicationController
 before_action :set_businesscard, only: [:show, :edit, :update, :destroy]
  def index
    @businesscards = Businesscard.all
  end
   def new
    @businesscard = Businesscard.new

  end
  def show
    @businesscard = Businesscard.find(params[:id])
  end

  def create
    businesscard = Businesscard.new(businesscard_params)
    businesscard.user = current_user
    businesscard.save!
    redirect_to businesscards_url
  end

private
    # Use callbacks to share common setup or constraints between actions.
    # get the :id params from the url to be passed to each action
    def businesscard_params
    params.require(:businesscard).permit(:name, :email, :phone, :title, :user_id)
  end
end

 # respond_to do |format|
 #      if @businesscard.save
 #        format.html { redirect_to @businesscard, notice:'Post was successfully created.'}
 #        format.json {render :show, status: :created, location:@businesscard}
 #        else
 #      format.html { render :new }
 #      format.json{ render json: @businesscard.errors, status: :unprocessable_entity }
 #     end
 #   end
 #  end
