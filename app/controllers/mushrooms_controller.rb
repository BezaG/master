class MushroomsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  load_and_authorize_resource
  before_action :set_mushroom, only: [:show, :edit, :update, :destroy]

  # GET /mushrooms
  # GET /mushrooms.json
  def index
    @mushrooms = Mushroom.all
  end

  # GET /mushrooms/1
  # GET /mushrooms/1.json
  def show
  end

  # GET /mushrooms/new
  def new
    @mushroom = Mushroom.new
  end

  # GET /mushrooms/1/edit
  def edit
  end

  # POST /mushrooms
  # POST /mushrooms.json
  def create
    @mushroom = Mushroom.new(mushroom_params)
    @mushroom.user = current_user
    @mushroom.company = current_user.company_name
    


    respond_to do |format|
      if @mushroom.save
        format.html { redirect_to @mushroom, notice: 'Mushroom was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mushroom }
      else
        format.html { render action: 'new' }
        format.json { render json: @mushroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mushrooms/1
  # PATCH/PUT /mushrooms/1.json
  def update
    respond_to do |format|
      if @mushroom.update(mushroom_params)
        format.html { redirect_to @mushroom, notice: 'Mushroom was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mushroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mushrooms/1
  # DELETE /mushrooms/1.json
  def destroy
    @mushroom.destroy
    respond_to do |format|
      format.html { redirect_to mushrooms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mushroom
      @mushroom = Mushroom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mushroom_params
      params.require(:mushroom).permit(:user_id, :company, :location, :day_of_supply, :quantity, :price, :reciept)
    end
end
