require "masterpiece/version"

module Masterpiece
  
  class HTML
		
		attr_reader :html_code

		def initialize(&block)
			
			instance_eval(&block)
			
		end

		private
		
		def method_missing(name,*args,&block)

			@html_code ||= ''
			
			if args.last == nil

				@html_code << %{<#{name}>}

			elsif args.last.class == Hash

				@html_code << %{<#{name} }

				args.last.each {|k,v| @html_code << %{#{k}="#{v}" }}

				args.first.class != Hash ? @html_code << %{>#{args.first}} : @html_code << %{>}

				#ingnore any string other than first one

			elsif args.last == args.first && args.last.class == String

				@html_code << %{<#{name}>#{args.first}}

			else

				@html_code << %{Something Wrong!!!}

			end
				

			if block_given?

				instance_eval(&block)

			end

			@html_code << %{</#{name}>}

		end

		def comment(arg = nil)

			@html_code << %{<!-- #{arg} -->}

		end

	end
	
end
