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
  def edit
    @businesscard = Businesscard.find(params[:id])
  end
  def update
    respond_to do |format|
      if @businesscard.update(businesscard_params)
        format.html {redirect_to @businesscard, notice: 'Businesscard was successfully updated.'}
      else
        format.html {render :edit}
      end
    end
  end
  # def update
  #   @businesscard = Businesscard.find(params[:id])
  #   @businesscard.update(businesscard_params)
  #   redirect_to businesscard_path @businesscard
  # end
  def destroy
    @businesscard.destroy
    respond_to do |format|
      format.html {redirect_to businesscards_url, notice: 'Businesscard was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

private
    def set_businesscard
      @businesscard = Businesscard.find(params[:id])
    end
    # Use callbacks to share common setup or constraints between actions.
    # get the :id params from the url to be passed to each action
    def businesscard_params
    params.require(:businesscard).permit(:name, :email, :phone, :title, :user_id, :image)
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
