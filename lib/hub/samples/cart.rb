module Hub::Samples
  class Cart < Base
    class << self
      def object
        parsed_json('cart')
      end

      def request
        {
          'request_id' => request_id,
          'cart' => object['cart']
        }
      end

      def message
        {
          'message' => 'cart:new',
          'store_id' => "51f788cf65762d3177000001",
          'payload' => {
            'cart' => object['cart']
          }
        }
      end
    end
  end
end
