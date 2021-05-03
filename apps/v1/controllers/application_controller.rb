module V1
  module Controllers
    class ApplicationController
      def json(result)
        self.body = params.errors.empty? ? result.to_json : errors
      end

      private

      def errors
        { errors: params.errors }.to_json
      end
    end
  end
end
