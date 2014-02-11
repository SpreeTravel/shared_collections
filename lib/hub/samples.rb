require 'bson'
require 'json'

module Hub
  module Samples
    def self.available
        %w[order product store]
    end
  end
end

require 'hub/samples/base'
require 'hub/samples/order'
require 'hub/samples/product'
require 'hub/samples/store'
