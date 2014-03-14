module Hub::Samples
  class Order < Base
    class << self
      def object
        parsed_json('order')
      end

      def request
        {
          'request_id' => request_id,
          'order' => object['order']
        }
      end

      def message
        {
          'message' => 'order:created',
          'store_id' => "51f788cf65762d3177000001",
          'payload' => {
            'order' => object['order']
          }
        }
      end
    end
  end
end
