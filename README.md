# MiniSubler

A lightweight Ruby wrapper around [Subler](http://code.google.com/p/subler/)'s CLI interface.

## Usage

```ruby
MiniSubler::Command.vendored.set_metadata("~/movie.mp4", {genre: "Comedy", artwork: "/path/to/artwork"})
```

See a full list of metadata tags at http://code.google.com/p/subler/wiki/SublerCLIHelp

MiniSubler underscores the tag names, replaces "#" with "number", and converts it to a symbol. Therefore, the tag `TV Episode #` would become the symbol `:tv_episode_number`.

## Installation

Add this line to your application's Gemfile:

    gem 'mini_subler'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mini_subler

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
