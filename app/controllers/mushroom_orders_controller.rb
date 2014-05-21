class MushroomOrdersController < ApplicationController
 before_filter :authenticate_user!, :except => [:index]
 load_and_authorize_resource
 before_action :set_mushroom_order, only: [:show, :edit, :update, :destroy]

  # GET /posts/:post_id/comments
  # GET /posts/:post_id/comments.xml
  def index
    #1st you retrieve the post thanks to params[:post_id]
    mushroom = Mushroom.find(params[:mushroom_id])
    #2nd you get all the comments of this post
    @mushroom_orders = mushroom.mushroom_order 
 
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @Mushroomorders }
    end
  end
 
  # GET /posts/:post_id/comments/:id
  # GET /comments/:id.xml
  def show
    #1st you retrieve the post thanks to params[:post_id]
    mushroom = Mushroom.find(params[:mushroom_id])
    #2nd you retrieve the comment thanks to params[:id]
    @mushroom_order = mushroom.mushroom_order.find(params[:id])
     
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mushroom_order }
    end
  end
 
  # GET /posts/:post_id/comments/new
  # GET /posts/:post_id/comments/new.xml
  def new
    #1st you retrieve the post thanks to params[:post_id]
    mushroom = Mushroom.find(params[:mushroom_id])
    #2nd you build a new one
    @mushroom_order = mushroom.mushroom_order.build
 
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @Mushroomorder }
    end
  end
 
  # GET /posts/:post_id/comments/:id/edit
  def edit
    #1st you retrieve the post thanks to params[:post_id]
    mushroom = Mushroom.find(params[:mushroom_id])
    #2nd you retrieve the comment thanks to params[:id]
    @mushroom_order = mushroom.mushroom_order.find(params[:id])
  end
 
  # POST /posts/:post_id/comments
  # POST /posts/:post_id/comments.xml
  def create
    #1st you retrieve the post thanks to params[:post_id]
    mushroom = Mushroom.find(params[:mushroom_id])
    #2nd you create the comment with arguments in params[:comment]
    @mushroom_order = mushroom.mushroom_order.create(mushroom_order_params)
    @mushroom_order.user = current_user
    @mushroom_order.company = current_user.company_name
    

  

    respond_to do |format|
      if @mushroom_order.save
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource comment
        format.html { redirect_to([@mushroom_order.mushroom, @Mushroomorder], :notice => 'An Mushroom order was successfully created.') }
        #the key :location is associated to an array in order to build the correct route to the nested resource comment
        format.xml  { render :xml => @mushroom_order, :status => :created, :location => [@Mushroomorder.mushroom, @Mushroomorder] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mushroom_order.errors, :status => :unprocessable_entity }
      end
    end
  end
 
  # PUT /posts/:post_id/comments/:id
  # PUT /posts/:post_id/comments/:id.xml
  def update
    #1st you retrieve the post thanks to params[:post_id]
    mushroom = Mushroom.find(params[:mushroom_id])
    #2nd you retrieve the comment thanks to params[:id]
    @Mushroomorder = mushroom.mushroom_order.find(params[:id])
 
    respond_to do |format|
      if @Mushroomorder.update_attributes(params[:mushroomorder])
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource comment
        format.html { redirect_to([@Mushroomorder.Mushroom, @Mushroomorder], :notice => 'Mushroom order was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @Mushroomorder.errors, :status => :unprocessable_entity }
      end
    end
  end
 
  # DELETE /posts/:post_id/comments/1
  # DELETE /posts/:post_id/comments/1.xml
  def destroy
    #1st you retrieve the post thanks to params[:post_id]
    mushroom = Mushroom.find(params[:Mushroom_id])
    #2nd you retrieve the comment thanks to params[:id]
    @Mushroomorder = mushroom.mushroom_order.find(params[:id])
    @Mushroomorder.destroy
 
    respond_to do |format|
      #1st argument reference the path /posts/:post_id/comments/
      format.html { redirect_to(Mushroom_Mushroomorders_url) }
      format.xml  { head :ok }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mushroom_order
      @Mushroom_order = MushroomOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mushroom_order_params
      params.require(:mushroom_order).permit(:user_id, :company, :tel, :location, :quantity, :price)
    end
  end

