class EggOrdersController < ApplicationController
  
  before_filter :authenticate_user!, :except => [:index]
  load_and_authorize_resource
  before_action :set_egg_order, only: [:show, :edit, :update, :destroy]

  # GET /posts/:post_id/comments
  # GET /posts/:post_id/comments.xml
  def index
    #1st you retrieve the post thanks to params[:post_id]
    @eggs = Egg.find(params[:egg_id])
    #2nd you get all the comments of this post
    @egg_orders = @eggs.egg_orders 

    
  end
 
  # GET /posts/:post_id/comments/:id
  # GET /comments/:id.xml
  def show
    #1st you retrieve the post thanks to params[:post_id]
    @egg = Egg.find(params[:egg_id])
    #2nd you retrieve the comment thanks to params[:id]
    @eggorder = @egg.egg_orders.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json  { render json: "show" }
    end
  end
 
  # GET /posts/:post_id/comments/new
  # GET /posts/:post_id/comments/new.xml
  def new
    #1st you retrieve the post thanks to params[:post_id]
    @egg = Egg.find(params[:egg_id])
    #2nd you build a new one
    @eggorder = @egg.egg_orders.build
 
    respond_to do |format|
      format.html # new.html.erb
      format.json  { render action: "new" }
    end
  end
 
  # GET /posts/:post_id/comments/:id/edit
  def edit
    #1st you retrieve the post thanks to params[:post_id]
    @egg = Egg.find(params[:egg_id])
    #2nd you retrieve the comment thanks to params[:id]
    @eggorder = @egg.egg_orders.find(params[:id])
  end
 
  # POST /posts/:post_id/comments
  # POST /posts/:post_id/comments.xml
  def create
    #1st you retrieve the post thanks to params[:post_id]
    @egg = Egg.find(params[:egg_id])
    #2nd you create the comment with arguments in params[:comment]
    @eggorder = @egg.egg_orders.create(egg_order_params)
    @eggorder.user = current_user
    @eggorder.company = current_user.company_name
    
  
    respond_to do |format|
      if @eggorder.save
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource comment
        format.html { redirect_to([@eggorder.egg, @eggorder], :notice => 'An egg order was successfully created.') }
        #the key :location is associated to an array in order to build the correct route to the nested resource comment
        format.json  { render action: "show", status: :created, location: [@eggorder.egg, @eggorder] }
      else
        format.html { render action:  "new" }
        format.xml  { render :xml => @eggorder.errors, status: :unprocessable_entity }
      end
    end
  end
 
  # PUT /posts/:post_id/comments/:id
  # PUT /posts/:post_id/comments/:id.xml
  def update
    @egg = Egg.find(params[:egg_id])
    @egg.daily_quantity = (@egg.daily_quantity - @egg_order.daily_quantity)
    @egg.save
    
    respond_to do |format|
      if @egg_order.update(egg_order_params)
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource comment
        format.html { redirect_to @egg_order, :notice => 'Egg order was successfully updated.' }
        format.json  { head :no_content }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @egg_order.errors, :status => :unprocessable_entity }
      end
    end
  end
 
  # DELETE /posts/:post_id/comments/1
  # DELETE /posts/:post_id/comments/1.xml
  def destroy
    #1st you retrieve the post thanks to params[:post_id]
    @egg = Egg.find(params[:egg_id])
    #2nd you retrieve the comment thanks to params[:id]
    @eggorder = @egg.egg_orders.find(params[:id])
    @eggorder.destroy
 
    respond_to do |format|
      #1st argument reference the path /posts/:post_id/comments/
      format.html { redirect_to(egg_eggorders_url) }
      format.xml  { head :ok }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_egg_order
      @egg_order = EggOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def egg_order_params
      params.require(:egg_order).permit(:user_id, :company, :location, :price, :daily_quantity, :accepted)
    end
  end

