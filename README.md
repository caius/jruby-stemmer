# JRuby::Stemmer

Easily stem words in ruby, using a native java implementation of the porter stemming algorithm for speed. (Java equivalent of the fast-stemmer gem for MRI.)

## Installation

Add this line to your application's Gemfile:

    gem 'jruby-stemmer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jruby-stemmer

## Usage

You can either call the wrapper method yourself, or use the mixed in helper method `String#stem`.

    JRuby::Stemmer.stem("apple") # => "appl"
    "apple".stem # => "appl"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
