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
    @view_post = Post.find(params[:post_id])
  
  end

  def edit
    @upd_post = Post.find(params[:post_id])
  end
  
  
  
  def update
    upd_id = params[:post_id] #
    upd_board = Post.find(upd_id)
    upd_board.title = params[:input_title]
    upd_board.editor = params[:input_editor]
    upd_board.content = params[:input_content]
    upd_board.save
    
    redirect_to '/'  
  
  end
  
  def delete
    del_post = Post.find(params[:post_id])
    del_post.delete
   
    redirect_to '/'
  end
end
