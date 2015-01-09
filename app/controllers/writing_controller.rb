class WritingController < ApplicationController
	
	http_basic_authenticate_with name: ENV["USERNAME"], password: ENV["PASSWORD"], except: [:index, :show]

	def index
	  @writings = Writing.all.order(published_at: :desc)
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
	
	def destroy
	  @writing = Writing.find(params[:id])
	  @writing.destroy
	  
	  redirect_to writing_index_path
	end
	
	private
	  def writing_params
	  	params.require(:writing).permit(:title, :body, :published_at)
	  end
end
