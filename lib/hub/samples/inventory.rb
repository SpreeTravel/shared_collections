module Hub::Samples
  class Inventory < Base
    class << self
      def object
        parsed_json('inventory')
      end

      def request
        {
          'request_id' => request_id,
          'inventory' => object['inventory']
        }
      end

      def message
        {
          'message' => 'inventory:new',
          'store_id' => "51f788cf65762d3177000001",
          'payload' => {
            'inventory' => object['inventory']
          }
        }
      end
    end
  end
end
