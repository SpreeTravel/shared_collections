module Hub::Wombat::JsonSchemas
  class Store < Base
    def self.schema
      parsed_json('store')
    end
  end
end
