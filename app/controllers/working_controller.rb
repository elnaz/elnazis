class WorkingController < ApplicationController
  def index
    @workings = Working.all
  end
  
  def show
	  @working = Working.find(params[:id])
	end
  
  def new
	  @working = Working.new
	end
	
	def edit
	  @working = Working.find(params[:id])
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
	  @working = Working.find(params[:id])
	  
	  if @working.update(working_params)
	    redirect_to @working
	  else
	    render 'edit'
	  end
	end
	
	def destroy
	  @working = Working.find(params[:id])
	  @working.destroy
	  
	  redirect_to working_index_path
	end
	
	private
	  def working_params
	  	params.require(:working).permit(:title, :subtitle, :body)
	  end
end
