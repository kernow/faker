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
        default_options = {:join => %w(. _), :format => :rand}
        options = default_options.merge(options)
        
        return name.scan(/\w+/).shuffle.join(options[:join].rand).downcase if name
        
        names = {
          :first => Proc.new { Name.first_name.gsub(/\W/, '').downcase },
          :first_last => Proc.new { 
            [ Name.first_name, Name.last_name ].map {|n| 
              n.gsub(/\W/, '')
            }.join(options[:join].rand).downcase }
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
        Company.name.split(' ').first.gsub(/\W/, '').downcase
      end
      
      def domain_suffix
        %w(co.uk com us uk ca biz info name).rand
      end
    end
  end
end