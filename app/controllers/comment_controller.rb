class CommentController < ApplicationController
    
    def reply_create
        new_reply=Reply.new
        new_reply.post_id=params[:post_id]
        new_reply.editor=params[:inputEditor]
        new_reply.content=params[:content]
        new_reply.save
       
        show_post_url='/show/'+params[:post_id]
        redirect_to show_post_url
    end
    
    def reply_delete
        del_reply=Reply.find(params[:reply_id])
        del_reply.delete
       
        show_post_url='/show/'+del_reply.post_id.to_s
        redirect_to show_post_url
    end
    
end
