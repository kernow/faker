module Faker
  class Internet
    class << self
      def email(name = nil)
        [ user_name(name), domain_name ].join('@')
      end
      
      def free_email(name = nil)
        [ user_name(name), %w(gmail.com yahoo.com hotmail.com).rand ].join('@')
      end
      
      def user_name(name = nil, options = {})
        default_options = {:join => %w(. _), :format => :rand, :data_source => RegularNames}
        options = default_options.merge(options)
        Name.data_source = options[:data_source]
        
        return name.scan(/\w+/).shuffle.join(options[:join].rand).downcase if name
        
        names = {
          :first => Proc.new { clean_and_downcase Name.first_name },
          :first_last => Proc.new { 
            [ Name.first_name, Name.last_name ].map {|n| 
              clean_and_downcase n
            }.join(options[:join].rand) }
        }
        
        if options[:format] == :rand
          names.rand.call
        else
          names[options[:format]].call
        end
      end
      
      def domain_name
        [ domain_word, domain_suffix ].join('.')
      end
      
      def domain_word
        clean_and_downcase Company.name.split(' ').first
      end
      
      def domain_suffix
        %w(co.uk com us uk ca biz info name).rand
      end
      
      protected
        def clean_and_downcase(str)
          str.gsub(/\W/, '').downcase
        end
    end
  end
end