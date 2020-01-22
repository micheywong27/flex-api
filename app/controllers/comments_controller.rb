class CommentsController < ApplicationController
    
    def index
        comments = Comment.all 
        render json: comments, status: :ok
    end 

    def show
        comment = Comment.find(params[:id])
        render json: comment, status: :ok
    end

    def create
        comment = Comment.new(comment_params)
        if comment.save
            render json: comment, status: :ok
        else
            render json: comment.errors, status: :unprocessable_entity
        end
    end

    def update
        comment = Comment.find(params[:id])
        if comment.update_attributes(comment_params)
            render json: comment, status: :ok
        else
            render json: comment.errors, status: :unprocessable_entity
        end
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
        render json: comment, status: :ok
    end

    private

    def comment_params
        params.require(:comment).permit(:textcomment, :user_id, :post_id)
    end

end