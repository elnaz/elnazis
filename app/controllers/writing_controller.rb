class WritingController < ApplicationController
	def index
	  @writings = Writing.all
	end
	
	def show
	  @writing = Writing.find(params[:id])
	end
	
	def new
	  @writing = Writing.new
	end
	
	def edit
	  @writing = Writing.find(params[:id])
	end
	
	def create
	  @writing = Writing.new(writing_params)
	  
	  if @writing.save
	  	redirect_to @writing
	  else
	    render 'new'
	  end
	end
	
	def update 
	  @writing = Writing.find(params[:id])
	  
	  if @writing.update(writing_params)
	    redirect_to @writing
	  else
	    render 'edit'
	  end
	end
	
	private
	  def writing_params
	  	params.require(:writing).permit(:title, :body, :published_at)
	  end
end
