# HttpErrorCats

Replace your HTTP error codes with cats As seen here https://www.flickr.com/photos/girliemac/sets/72157628409467125/

## Installation

Add this line to your application's Gemfile:

    gem 'http_error_cats'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install http_error_cats

## Usage

Configuration options in `config/application.rb`

    # Layout to use for error page rendering. Default: false
    HttpErrorCats.layout = false
    
    # Cat codes to server. Default :all
    HttpErrorCats.codes = :all
    # or
    HttpErrorCats.codes = [404, 500]
    
    # Html used to render the error code. 
    # Default: 
    #   Proc.new do |status_code| 
    #      image_tag "/assets/http_error_cats/#{status_code}.jpg", alt: "Status code #{status_code}"
    #   end
    HttpErrorCats.html = Proc.new {|code| "<h2>Error #{code}</h2>"}
    
## License

Images (c) girlimac - https://www.flickr.com/photos/girliemac/
    
## Contributing

1. Fork it ( https://github.com/[my-github-username]/http_error_cats/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
