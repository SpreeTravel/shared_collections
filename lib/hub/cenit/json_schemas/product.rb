module Hub::Wombat::JsonSchemas
  class Product < Base
    def self.schema
      parsed_json('product')
    end
  end
end
