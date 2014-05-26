class HoneysController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  load_and_authorize_resource
  

  # GET /honeys
  # GET /honeys.json
  def index
    @honeys = Honey.all
  end

  # GET /honeys/1
  # GET /honeys/1.json
  def show
  end

  # GET /honeys/new
  def new
    @honey = Honey.new
  end

  # GET /honeys/1/edit
  def edit
  end

  # POST /honeys
  # POST /honeys.json
  def create
    @honey = Honey.new(honey_params)
    @honey.user = current_user
    @honey.company = current_user.company_name
    

  


    respond_to do |format|
      if @honey.save
        format.html { redirect_to @honey, notice: 'Honey was successfully created.' }
        format.json { render action: 'show', status: :created, location: @honey }
      else
        format.html { render action: 'new' }
        format.json { render json: @honey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /honeys/1
  # PATCH/PUT /honeys/1.json
  def update
    respond_to do |format|
      if @honey.update(honey_params)
        format.html { redirect_to @honey, notice: 'Honey was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @honey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /honeys/1
  # DELETE /honeys/1.json
  def destroy
    @honey.destroy
    respond_to do |format|
      format.html { redirect_to honeys_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_honey
      @honey = Honey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def honey_params
      params.require(:honey).permit(:user_id, :company, :tel, :honey_type, :location, :amount, :price, :condition, :reciept)
    end
end
