module Faker
  class Name
    class << self
      def name
        Formats.rand.call.join(' ')
      end
    
      def first_name
        data_source.first_names.rand
      end
    
      def last_name
        data_source.last_names.rand
      end
      
      def prefix
        data_source.prefixes.rand
      end

      def suffix
        data_source.suffixes.rand
      end
      
      def data_source
        @data_source || RegularNames
      end
      
      def data_source=(source)
        @data_source = source
      end
    end
    
    Formats = [
      Proc.new { [ prefix, first_name, last_name ] },
      Proc.new { [ first_name, last_name, suffix ] },
      Proc.new { [ first_name, last_name ] },
      Proc.new { [ first_name, last_name ] },
      Proc.new { [ first_name, last_name ] },
      Proc.new { [ first_name, last_name ] },
      Proc.new { [ first_name, last_name ] },
      Proc.new { [ first_name, last_name ] },
      Proc.new { [ first_name, last_name ] },
      Proc.new { [ first_name, last_name ] }
      ]
  end
end