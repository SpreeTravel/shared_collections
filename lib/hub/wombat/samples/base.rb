module Hub::Wombat::Samples
  class Base
    class << self
      def build_json(base, overrides={})
        json = if base.is_a? Hash
          base
        else
          parsed_json(base.to_s)
        end

        overrides.each do |key, value|
          json[key] = process_override(value)
        end

        JSON.pretty_generate(json)
      end

      def process_override(value)
        case value
        when Symbol
          j = parsed_json(value.to_s)

          if j.keys.size == 1
            j[j.keys.first] #drop root node
          end
        when Hash
          j = {}
          value.each do |k,v|
            j[k] = process_override(v)
          end
          j
        when Array
          j = []
          value.each do |v|
            j << process_override(v)
          end
          j
        when Proc
          override, level = value.call

          process_override(override)[level]
        else
          value
        end
      end

      def parsed_json(object)
        JSON.parse(open_json(object))
      end

      def open_json(file_name)
        File.open(File.expand_path("../../../../../model_schemas/wombat/json_samples#{file_name}.json", __FILE__)).read
      rescue => e
        e.message
      end

      def request_id
        BSON::ObjectId.new.to_s
      end
    end
  end
end
