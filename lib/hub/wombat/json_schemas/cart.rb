module Hub::Wombat::JsonSchemas
  class Cart < Base
    def self.schema
      parsed_json('cart')
    end
  end
end
