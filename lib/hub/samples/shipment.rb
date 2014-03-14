module Hub::Samples
  class Shipment < Base
    class << self
      def object
        parsed_json('shipment')
      end

      def request
        {
          'request_id' => request_id,
          'shipment' => object['shipment']
        }
      end

      def message
        {
          'message' => 'shipment:created',
          'store_id' => "51f788cf65762d3177000001",
          'payload' => {
            'shipment' => object['shipment']
          }
        }
      end
    end
  end
end
