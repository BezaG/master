class EggsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  load_and_authorize_resource 
  before_action :set_egg, only: [:show, :edit, :update, :destroy]

  # GET /eggs
  # GET /eggs.json
  def index
    @eggs = Egg.all
  end

  # GET /eggs/1
  # GET /eggs/1.json
  def show
  end

  # GET /eggs/new
  def new
    @egg = Egg.new
  end

  # GET /eggs/1/edit
  def edit
  end

  # POST /eggs
  # POST /eggs.json
  def create
    @egg = Egg.new(egg_params)
    @egg.user = current_user
    @egg.company = current_user.company_name
    




    respond_to do |format|
      if @egg.save
        format.html { redirect_to @egg, notice: 'Egg was successfully created.' }
        format.json { render action: 'show', status: :created, location: @egg }
      else
        format.html { render action: 'new' }
        format.json { render json: @egg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eggs/1
  # PATCH/PUT /eggs/1.json
  def update
    respond_to do |format|
      if @egg.update(egg_params)
        format.html { redirect_to @egg, notice: 'Egg was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @egg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eggs/1
  # DELETE /eggs/1.json
  def destroy
    @egg.destroy
    respond_to do |format|
      format.html { redirect_to eggs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_egg
      @egg = Egg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def egg_params
      params.require(:egg).permit(:user_id, :company, :tel, :location, :type_of_egg, :daily_quantity,  :price, :reciept)
    end
end
