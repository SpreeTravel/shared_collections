module Hub::Wombat::JsonSchemas
  class Base
    class << self

      def parsed_json(object)
        JSON.parse(open_json(object))
      end

      def open_json(file_name)
        File.open(File.expand_path("../../../../model_schemas/wombat/json_samples/#{file_name}.json", __FILE__)).read
      rescue => e
        e.message
      end

    end
  end
end
