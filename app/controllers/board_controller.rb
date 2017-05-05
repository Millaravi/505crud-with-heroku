class BoardController < ApplicationController
  def index
   @Board = Post.all
  end

  def new
  
  end
  
  def create
    
    @makeBoard = Post.new
    @makeBoard.title = params[:input_title]
    @makeBoard.editor = params[:input_editor]
    @makeBoard.content = params[:input_content]
    @makeBoard.save
    
  end

  def show
  
    @Board = Post.find(params[:id])
    
  end

  def edit
    
  end
  
  
  
  def update
    upd_id = params[:id]
    upd_board = Post.find(upd_id)
    upd_board.title = params[:input_title]
    upd_board.editor = params[:input_editor]
    upd_board.content = params[:input_content]
    upd_board.save
    
    redirect_to '/'  
  
  end
  
  def delete
    del_id = params[:id]
    del_board = Post.find(del_id)
    del_board.delete
    
    redirect_to '/'
  end
end
