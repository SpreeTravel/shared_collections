module Hub::Wombat::JsonSchemas
  class Customer < Base
    def self.schema
      parsed_json('customer')
    end
  end
end
