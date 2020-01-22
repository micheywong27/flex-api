class PostsController < ApplicationController
    
    def index
        posts = Post.all.with_attached_media 
        render json: PostSerializer.new(posts), status: :ok
    end 

    def media
        post = Post.find_by(id: params[:id])
        if post.media.attached?
          redirect_to rails_blob_url(post.media)
        else
          head :not_found
        end
    end

    def show
        post = Post.find(params[:id])
        render json: PostSerializer.new(post), status: :ok
    end

    def create
        post = Post.new(post_params)
        if post.save
            render json: post, status: :ok
        else
            render json: post.errors, status: :unprocessable_entity
        end
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
        params.require(:post).permit(:media, :content, :comment, :clap, :nutrition, :user_id)
    end

end