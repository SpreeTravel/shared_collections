require 'bson'
require 'json'

module Hub
  module Wombat
    module Samples
      def self.available
          %w[cart inventory order product shipment]
      end
    end
  end  
end

require 'hub/wombat/samples/base'
require 'hub/wombat/samples/cart'
require 'hub/wombat/samples/inventory'
require 'hub/wombat/samples/order'
require 'hub/wombat/samples/product'
require 'hub/wombat/samples/shipment'
require 'hub/wombat/samples/store'
require 'hub/wombat/samples/customer'
