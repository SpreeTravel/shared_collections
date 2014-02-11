module Hub::Samples
  class Order < Base
    def self.object
      parsed_json('order')
    end

    def self.request
      {
        'request_id' => request_id,
        'order' => object['order']
      }
    end
  end
end
