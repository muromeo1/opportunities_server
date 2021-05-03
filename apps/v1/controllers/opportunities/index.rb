module V1
  module Controllers
    module Opportunities
      class Index < ApplicationController
        include V1::Action

        params do
          required(:a).filled
          required(:b).filled
        end

        def call(params)
          result = { return: 1 }

          json(result)
        end
      end
    end
  end
end
