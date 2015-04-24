module Hub::Wombat::JsonSchemas
  class Inventory < Base
    def self.schema
      parsed_json('inventory')
    end
  end
end
