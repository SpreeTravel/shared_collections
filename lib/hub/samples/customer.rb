module Hub::Samples
  class Customer < Base
    class << self
      def object
        parsed_json('customer')
      end

      def request
        {
          'request_id' => request_id,
          'customer' => object['customer']
        }
      end

      def message
        {
          'message' => 'customer:created',
          'store_id' => "51f788cf65762d3177000001",
          'payload' => {
            'customer' => object['customer']
          }
        }
      end
    end
  end
end
