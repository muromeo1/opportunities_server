module V1
  module Controllers
    class ApplicationController
      def json(result)
        self.body = result.to_json
      end

      def errors
        self.body = { errors: params.errors }.to_json
      end
    end
  end
end
