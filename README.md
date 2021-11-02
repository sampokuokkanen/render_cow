 _____ 
| RenderCow |
 ----- 
      \   ^__^
       \  (oo)\_______
          (__)\       )\/\
              ||----w |
              ||     ||

RenderCow cowpatches the Rails render method to allow you to directly use cowsay. 
Have you ever wanted to just render a cow?
Well now you can!


## Usage

In your controller, replace calls with `render plain:` to `render cowsay:` or `render cow:`.

```ruby
class ApplicationController < ActionController::Base
  def index
    render cowsay: "Moo"
  end

  def show
    render cow: "Mooo"
  end
end
```

But that is not all! 
You also have the following render-options: 
```ruby
[:spongebob, :beavis, :bunny, :cheese, :cow, :daemon, :dragon, :elephant, :frogs, :ghostbusters, :kitty, :koala, :moose, :ren, :sheep, :stegosaurus, :stimpy, :turkey, :turtle, :tux]
```

So feel free to call `render spongebob: iS thIs A mEme?` from your controllers!

Todo: 
Make Spongebob do the meme talk automatically. 
There is already a gem for that. 

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'render_cow'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install render_cow
```

## Contributing
Feel free to contribute. 

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
