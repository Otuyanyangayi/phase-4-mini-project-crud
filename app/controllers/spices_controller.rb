class SpicesController < ApplicationController
    def index
        render json: Spice.all
      end
    
      def create
        new_spice = Spice.create(spice_params)
        render json: new_spice, status: :created
      end
    
      def update
        spice = find_spice
        spice.update(spice_params)
        render json: spice
      end
    
      def destroy
        spice = find_spice
        spice.destroy
      end
    
      private
    
      def spice_params
        params.permit(:title, :image, :notes, :description, :rating)
      end
    
      def find_spice
        Spice.find(params[:id])
      end
    
      
    
end
