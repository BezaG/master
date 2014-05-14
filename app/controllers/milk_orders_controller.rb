class MilkOrdersController < ApplicationController
  before_action :set_milk_order, only: [:show, :edit, :update, :destroy]

  # GET /posts/:post_id/comments
  # GET /posts/:post_id/comments.xml
  def index
    #1st you retrieve the post thanks to params[:post_id]
    milk = Milk.find(params[:milk_id])
    #2nd you get all the comments of this post
    @milk_orders = milk.milk_order 
 
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @milk_orders }
    end
  end
 
  # GET /posts/:post_id/comments/:id
  # GET /comments/:id.xml
  def show
    #1st you retrieve the post thanks to params[:post_id]
    milk = Milk.find(params[:milk_id])
    #2nd you retrieve the comment thanks to params[:id]
    @milk_order = milk.milk_order.find(params[:id])
     
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @milk_order }
    end
  end
 
  # GET /posts/:post_id/comments/new
  # GET /posts/:post_id/comments/new.xml
  def new
    #1st you retrieve the post thanks to params[:post_id]
    milk = Milk.find(params[:milk_id])
    #2nd you build a new one
    @milk_order = milk.milk_order.build
 
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @milk_order }
    end
  end
 
  # GET /posts/:post_id/comments/:id/edit
  def edit
    #1st you retrieve the post thanks to params[:post_id]
    milk = Milk.find(params[:milk_id])
    #2nd you retrieve the comment thanks to params[:id]
    @milk_order = milk.milk_order.find(params[:id])
  end
 
  # POST /posts/:post_id/comments
  # POST /posts/:post_id/comments.xml
  def create
    #1st you retrieve the post thanks to params[:post_id]
    milk = Milk.find(params[:milk_id])
    #2nd you create the comment with arguments in params[:comment]
    @milk_order = milk.milk_order.create(milk_order_params)
    
    @milk_order.user = current_user.user_name
    @milk_order.company = current_user.company_name
    @milk_order.tel = current_user.tel

    respond_to do |format|
      if @milk_order.save
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource comment
        format.html { redirect_to([@milk_order.milk, @milk_order], :notice => 'A milk order was successfully created.') }
        #the key :location is associated to an array in order to build the correct route to the nested resource comment
        format.xml  { render :xml => @milk_order, :status => :created, :location => [@milk_order.milk, @milk_order] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @milk_order.errors, :status => :unprocessable_entity }
      end
    end
  end
 
  # PUT /posts/:post_id/comments/:id
  # PUT /posts/:post_id/comments/:id.xml
  def update
    #1st you retrieve the post thanks to params[:post_id]
    milk = Milk.find(params[:milk_id])
    #2nd you retrieve the comment thanks to params[:id]
    @milk_order = milk.milk_order.find(params[:id])
 
    respond_to do |format|
      if @milk_order.update_attributes(params[:milkorder])
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource comment
        format.html { redirect_to([@milk_order.milk, @milk_order], :notice => 'Milk order was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @milk_order.errors, :status => :unprocessable_entity }
      end
    end
  end
 
  # DELETE /posts/:post_id/comments/1
  # DELETE /posts/:post_id/comments/1.xml
  def destroy
    #1st you retrieve the post thanks to params[:post_id]
    milk = Milk.find(params[:milk_id])
    #2nd you retrieve the comment thanks to params[:id]
    @milk_order = milk.milk_order.find(params[:id])
    @milk_order.destroy
 
    respond_to do |format|
      #1st argument reference the path /posts/:post_id/comments/
      format.html { redirect_to(Milk_Milkorders_url) }
      format.xml  { head :ok }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_milk_order
      @milk_order = MilkOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def milk_order_params
      params.require(:milk_order).permit(:user, :company, :tel, :location, :price, :milk_id, :daily_quantity)
    end
end
 