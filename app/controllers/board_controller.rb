class BoardController < ApplicationController
  def index
   @Board = Post.all
  end

  def new
  
    @makeBoard = Post.new
    @makeBoard.title = params[:input_title]
    @makeBoard.editor = params[:input_editor]
    @makeBoard.text = params[:input_text]
    @makeBoard.save
    
  end

  def show
  
  end

  def edit
  
  end
  
  def update

    redirect_to '/new'  
  end
  
  def delete
    redirect_to '/new'
  end
end
