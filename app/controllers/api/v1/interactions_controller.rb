module Api
  module V1
    class InteractionsController < ApplicationController
      before_action :get_user, except: [:index, :create]

      def index
        customers = Interactions.all
        render json: customers, 
               status: :ok,
               each_serializer: InteractionSerializer,
               root: 'data'
      end

      def show
        render json: @interaction,
               status: :ok,
               serializer: InteractionSerializer,
               root: 'data'

        #render 404 if not found
      end

      def create
        interaction = Interaction.create(customer_params)
        render nothing: true, status: :created
      end

      def update
        interaction = Interaction.update_attributes(params)
        render json: interaction, status: :accepted
      end

      def destroy
        @interaction.destroy
        render nothing: true, status: :accepted
      end

      private

      def get_user
        @interaction = Interaction.find(params[:id])
      end

      def interaction_params
        params.permit(:badge_num, :comment, :zip_code)
      end
    end
  end
end
