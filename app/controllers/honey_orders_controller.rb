class HoneyOrdersController < ApplicationController
 before_action :set_Honey_order, only: [:show, :edit, :update, :destroy]

  # GET /posts/:post_id/comments
  # GET /posts/:post_id/comments.xml
  def index
    #1st you retrieve the post thanks to params[:post_id]
    Honey = Honey.find(params[:Honey_id])
    #2nd you get all the comments of this post
    @Honeyorders = Honey.Honey_order 
 
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @Honeyorders }
    end
  end
 
  # GET /posts/:post_id/comments/:id
  # GET /comments/:id.xml
  def show
    #1st you retrieve the post thanks to params[:post_id]
    Honey = Honey.find(params[:Honey_id])
    #2nd you retrieve the comment thanks to params[:id]
    @Honeyorder = Honey.Honey_order.find(params[:id])
    @Honeys = Honey.find(:all)
 
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @Honeyorder }
    end
  end
 
  # GET /posts/:post_id/comments/new
  # GET /posts/:post_id/comments/new.xml
  def new
    #1st you retrieve the post thanks to params[:post_id]
    Honey = Honey.find(params[:Honey_id])
    #2nd you build a new one
    @Honeyorder = Honey.Honey_order.build
 
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @Honeyorder }
    end
  end
 
  # GET /posts/:post_id/comments/:id/edit
  def edit
    #1st you retrieve the post thanks to params[:post_id]
    Honey = Honey.find(params[:Honey_id])
    #2nd you retrieve the comment thanks to params[:id]
    @Honeyorder = Honey.Honey_order.find(params[:id])
  end
 
  # POST /posts/:post_id/comments
  # POST /posts/:post_id/comments.xml
  def create
    #1st you retrieve the post thanks to params[:post_id]
    Honey = Honey.find(params[:Honey_id])
    #2nd you create the comment with arguments in params[:comment]
    @Honeyorder = Honey.Honey_order.create(Honey_order_params)
 
    respond_to do |format|
      if @Honeyorder.save
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource comment
        format.html { redirect_to([@Honeyorder.Honey, @Honeyorder], :notice => 'An Honey order was successfully created.') }
        #the key :location is associated to an array in order to build the correct route to the nested resource comment
        format.xml  { render :xml => @Honeyorder, :status => :created, :location => [@Honeyorder.Honey, @Honeyorder] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @Honeyorder.errors, :status => :unprocessable_entity }
      end
    end
  end
 
  # PUT /posts/:post_id/comments/:id
  # PUT /posts/:post_id/comments/:id.xml
  def update
    #1st you retrieve the post thanks to params[:post_id]
    Honey = Honey.find(params[:Honey_id])
    #2nd you retrieve the comment thanks to params[:id]
    @Honeyorder = Honey.Honey_order.find(params[:id])
 
    respond_to do |format|
      if @Honeyorder.update_attributes(params[:Honeyorder])
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource comment
        format.html { redirect_to([@Honeyorder.Honey, @Honeyorder], :notice => 'Honey order was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @Honeyorder.errors, :status => :unprocessable_entity }
      end
    end
  end
 
  # DELETE /posts/:post_id/comments/1
  # DELETE /posts/:post_id/comments/1.xml
  def destroy
    #1st you retrieve the post thanks to params[:post_id]
    Honey = Honey.find(params[:Honey_id])
    #2nd you retrieve the comment thanks to params[:id]
    @Honeyorder = Honey.Honey_order.find(params[:id])
    @Honeyorder.destroy
 
    respond_to do |format|
      #1st argument reference the path /posts/:post_id/comments/
      format.html { redirect_to(Honey_Honeyorders_url) }
      format.xml  { head :ok }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_Honey_order
      @Honey_order = HoneyOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def Honey_order_params
      params.require(:Honey_order).permit(:user, :company, :tel, :location, :price, :quantity)
    end
  end


end
