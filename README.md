# Masterpiece
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'masterpiece'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install masterpiece

## Usage

```ruby
html = Masterpiece::HTML.new do

	html do

    	head do

      		title "title-test"
      		comment "comment-test"

    	end
    
    	body "body-test",attr1:"1",attr2:"2" do

    		comment "comment-test-body" 
    		h1 'hey'
    		comment "comment-test-body-2" 

    	end

    	a "link-test",href:"http://www.w3schools.com"

  	end
end

puts html.html_code
```


## Contributing

1. Fork it ( https://github.com/yen168/masterpiece/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

https://rubygems.org/gems/masterpiece

