class EggOrdersController < ApplicationController
  before_filter :authenticate_user!
   
  load_and_authorize_resource :egg
  load_and_authorize_resource :egg_order, :through => :egg, :parent => false, :except =>"some_action", :except =>"show"

  skip_authorize_resource :only => :some_action  
  

  
  # GET /posts/:post_id/comments
  # GET /posts/:post_id/comments.xml
  def index
    #1st you retrieve the post thanks to params[:post_id]
    

 
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @eggorders }
    end
  end
 
  # GET /posts/:post_id/comments/:id
  # GET /comments/:id.xml
  def show
    #1st you retrieve the post thanks to params[:post_id]
    @egg = Egg.find(params[:egg_id])
    #2nd you retrieve the comment thanks to params[:id]
    
    @egg_order = @egg.egg_orders.find(params[:id])
 
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @eggorder }
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
      format.xml  { render :xml => @eggorder }
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
    @eggorder.accepted = 'no' 
    
  

 
    respond_to do |format|
      if @eggorder.save
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource comment
        format.html { redirect_to([@eggorder.egg, @eggorder], :notice => 'An egg order was successfully created.') }
        #the key :location is associated to an array in order to build the correct route to the nested resource comment
        format.xml  { render :xml => @eggorder, :status => :created, :location => [@eggorder.egg, @eggorder] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @eggorder.errors, :status => :unprocessable_entity }
      end
    end
  end
 
  # PUT /posts/:post_id/comments/:id
  # PUT /posts/:post_id/comments/:id.xml
  def update
    #1st you retrieve the post thanks to params[:post_id]
    @egg = Egg.find(params[:egg_id])
    #2nd you retrieve the comment thanks to params[:id]
    @eggorder = @egg.egg_orders.find(params[:id])
 
    respond_to do |format|
      if @eggorder.update_attributes(params[:eggorder])
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource comment
        format.html { redirect_to([@eggorder.egg, @eggorder], :notice => 'Egg order was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @eggorder.errors, :status => :unprocessable_entity }
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

  def some_action
    authorize! :show_polls_for, Egg
    authorize! :some_action
    
    flash[:error] = "You must be logged in to access this section"

    # Update your database here
    @egg = Egg.find(params[:egg_id])
    #2nd you retrieve the comment thanks to params[:id]
    @eggorder = @egg.egg_orders.find(params[:id])

    @eggorder.accepted = "yes"
    
    respond_to do |format|
      format.js { render 'index' }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def egg_order_params
      params.require(:egg_order).permit(:user_id, :company, :location, :price, :daily_quantity, :accepted)
    end
  end

