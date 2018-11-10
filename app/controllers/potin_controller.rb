class PotinController < ApplicationController

    def new
        @potin = Potin.new
    end


    def index
        puts "HEYYYY!!!!"
        if @potin.nil?
            # on affichie RIEN
        else
            @potin = Potin.all
        end
    end

    def create
        @potin = Potin.new(potin_params)
        @potin.save
        puts "HOHOHOH!!!!"
        p @potin.id
        redirect_to potin_path(@potin.id)
        
    end

    

    def show
        @potin = @potin.find(params[:id])
    end

    private
    def potin_params
        params.require(:potin).permit(:author, :content)
    end
end
