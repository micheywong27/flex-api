class PostsController < ApplicationController
    
    def index
        posts = Post.all 
        render json: posts, status: :ok
    end 

    def show
        post = Post.find(params[:id])
        render json: post, status: :ok
    end

    def create
        post = Post.new(post_params)
        if post.save
            render json: post, status: :ok
        else
            render json: post.errors, status: :unprocessable_entity
    end

    def update
        post = Post.find(params[:id])
        if post.update_attributes(post_params)
            render json: post, status: :ok
        else
            render json: post.errors, status: :unprocessable_entity
        end
    end

    def destroy
        post = Post.find(params[:id])
        post.destroy
        render json: post, status: :ok
    end

    private

    def post_params
        params.require(:post).permit(:content, :comment, :clap, :user_id)
    end

end