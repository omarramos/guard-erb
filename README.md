# Guard::Erb

A guard extension that compiles .erb files

## Installation

Add this line to your application's Gemfile:

    gem 'guard-erb'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install guard-erb

## Usage

Please read [Guard usage doc](https://github.com/guard/guard#readme).

## Guardfile

```ruby
guard 'erb', :input => 'app/views/index.html.erb', :output => "public/index.html" do
  watch (%r{app/views/index.html.erb})
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
