module Hub::Wombat::JsonSchemas
  class Order < Base
    def self.schema
      parsed_json('order')
    end
  end
end
