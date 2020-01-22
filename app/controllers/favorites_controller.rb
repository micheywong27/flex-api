class FavoritesController < ApplicationController
    
    def index
        favorites = Favorite.all 
        render json: FavoriteSerializer.new(favorites), status: :ok
    end 

    def show
        favorite = Favorite.find(params[:id])
        render json: FavoriteSerializer.new(favorite), status: :ok
    end

    def create
        favorite = Favorite.new(favorite_params)
        if favorite.save
            render json: favorite, status: :ok
        else
            render json: favorite.errors, status: :unprocessable_entity
        end
    end

    def update
        favorite = Favorite.find(params[:id])
        if favorite.update_attributes(favorite_params)
            render json: favorite, status: :ok
        else
            render json: favorite.errors, status: :unprocessable_entity
        end
    end

    def destroy
        favorite = Favorite.find(params[:id])
        favorite.destroy
        render json: favorite, status: :ok
    end

    private

    def favorite_params
        params.require(:favorite).permit(:user_id, :post_id)
    end

end