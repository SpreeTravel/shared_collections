module Hub::Wombat::Samples
  class Store < Base
    def self.object
      parsed_json('store')
    end
  end
end
