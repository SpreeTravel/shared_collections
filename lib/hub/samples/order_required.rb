module Hub::Samples
  class OrderRequired < Base
    class << self
      def object
        parsed_json('order_required')
      end
    end
  end
end