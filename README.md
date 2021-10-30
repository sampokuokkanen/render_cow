```bash
 ______________________ 
|     RenderCow!       |
 ---------------------- 
      \   ^__^
       \  (oo)\_______
          (__)\       )\/\
              ||----w |
              ||     ||

```
RenderCow cowpatches the Rails render method to allow you to directly use cowsay. 
Have you ever wanted to just render a cow?
Well now you can!

[See RenderCow in Action!](https://wasurechatta.com/moo?moo=RenderCow%20in%20action!)

## Usage

In your controller, replace calls with `render plain:` to `render cowsay:` or `render cow:`.
(You can still use render plain: and render partial: and others too, but you get invested cow superpowers by this gem)


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

This gem uses [cowsay](https://rubygems.org/gems/cowsay) as the cow rendering engine. 
So this gem is just the Rails cow patch on the render method. 

## Contributing
Feel free to contribute. 

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
