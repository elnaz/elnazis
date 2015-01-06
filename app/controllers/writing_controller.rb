class WritingController < ApplicationController
	def show
	  @writing = Writing.find(params[:id])
	end
	
	def new
	end
	
	def create
	  @writing = Writing.new(writing_params())
	  
	  @writing.save
	  redirect_to @writing
	end
	
	private
	  def writing_params
	  	params.require(:writing).permit(:title, :body, :published_at)
	  end
end
