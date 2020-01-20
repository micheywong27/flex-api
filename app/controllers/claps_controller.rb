class ClapsController < ApplicationController
    
    def index
        claps = Clap.all 
        render json: claps, status: :ok
    end 

    def show
        clap = Clap.find(params[:id])
        render json: clap, status: :ok
    end

    def create
        clap = Clap.new(clap_params)
        if clap.save
            render json: clap, status: :ok
        else
            render json: clap.errors, status: :unprocessable_entity
        end
    end

    def update
        clap = Clap.find(params[:id])
        if clap.update_attributes(clap_params)
            render json: clap, status: :ok
        else
            render json: clap.errors, status: :unprocessable_entity
        end
    end

    def destroy
        clap = Clap.find(params[:id])
        clap.destroy
        render json: clap, status: :ok
    end

    private

    def clap_params
        params.require(:clap).permit(:user_id, :post_id)
    end

end