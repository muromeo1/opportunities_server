module V1
  module Controllers
    module Opportunities
      class Show < ApplicationController
        include V1::Action

        params do
          required(:id).filled
        end

        def call(params)
          params.valid? ? json(result) : errors
        end

        private

        def result
          @result ||= OpportunityRepository.new.find(params[:id]).to_h
        end
      end
    end
  end
end
