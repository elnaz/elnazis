class WorkingController < ApplicationController
  
  http_basic_authenticate_with name: ENV["USERNAME"], password: ENV["PASSWORD"], except: [:index, :show]
  
  def index
    @workings = Working.all.order(:sort_order)
  end
  
  def show
	  @working = Working.find_by_slug(params[:slug])
	end
  
  def new
	  @working = Working.new
	end
	
	def edit
	  @working = Working.find_by_slug(params[:slug])
	end
	
	def create
	  @working = Working.new(working_params)
	  
	  if @working.save
	  	redirect_to @working
	  else
	    render 'new'
	  end
	end
	
	def update 
	  @working = Working.find_by_slug(params[:slug])
	  
	  if @working.update(working_params)
	    redirect_to @working
	  else
	    render 'edit'
	  end
	end
	
	def destroy
	  @working = Working.find_by_slug(params[:slug])
	  @working.destroy
	  
	  redirect_to working_index_path
	end
	
	private
	  def working_params
	  	params.require(:working).permit(:title, :subtitle, :slug, :body, :sort_order, :image)
	  end
end
