module Api
  module V1
    class InteractionsController < ApplicationController
      before_action :get_interaction, except: [:index, :create, :search]

      def index
        interactions = Interaction.last(50)
        render json: interactions,
               status: :ok,
               each_serializer: InteractionSerializer,
               root: 'data'
      end

      def show
        render json: @interaction,
               status: :ok,
               serializer: InteractionSerializer,
               root: 'data'
      end

      def create
        interaction = Interaction.create(interaction_params)
        render json: interaction, status: :created
      end

      def search
        interactions = Interaction.by_officer_name(params[:officer_name]) if params[:officer_name].present?
        interactions = Interaction.by_zip_code(params[:zip_code]) if params[:zip_code].present?
        interactions = Interaction.by_reporter_sex(params[:sex]) if params[:sex].present?
        interactions = Interaction.by_date(params[:start_date],params[:end_date]) if dates_present?

        render json: interactions,
               status: :ok,
               each_serializer: InteractionSerializer,
               root: 'data'
      end

      private

      def get_interaction
        @interaction = Interaction.find(params[:id])
      end

      def dates_present?
        [params[:start_date], params[:end_date]].all? { |p| p.present? }
      end

      def interaction_params
        params.permit(
          :officer_badge, :zip_code,
          :officer_name, :organization, :comment,
          :reporter_name, :reporter_phone,
          :reporter_race, :reporter_sex, :reporter_age,
          :status
        )
      end
    end
  end
end
