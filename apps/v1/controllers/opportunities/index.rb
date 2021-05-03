module V1
  module Controllers
    module Opportunities
      class Index < ApplicationController
        include V1::Action

        params do
          required(:company_id).filled
          required(:page).filled
        end

        def call(params)
          params.valid? ? json(result) : errors
        end

        private

        def result
          @result||= OpportunityRepository.new.by_company_id(
            company_id: params[:company_id],
            per_page: params[:per_page] || 5,
            page: params[:page]
          ).map(&:to_h)
        end
      end
    end
  end
end
