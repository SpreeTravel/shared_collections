module Hub::Wombat::JsonSchemas
  class Shipment < Base
    def self.schema
      parsed_json('shipment')
    end
  end
end
