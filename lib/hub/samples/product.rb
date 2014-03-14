module Hub::Samples
  class Product < Base
    class << self
      def object
        parsed_json('product')
      end

      def request
        {
          'request_id' => request_id,
          'product' => object['product']
        }
      end

      def message
        {
          'message' => 'product:created',
          'store_id' => "51f788cf65762d3177000001",
          'payload' => {
            'product' => object['product']
          }
        }
      end
    end
  end
end
