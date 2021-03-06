[![Build Status](https://secure.travis-ci.org/okfocus/omniauth-webeat.png)](http://travis-ci.org/okfocus/omniauth-webeat)

# Omniauth-webeat

This is a Ruby gem containing an OminAuth strategy for [webe.at](http://webe.at). It can be used to authenticate people with their webe.at accounts.

## Usage

### Installation

If you are using Bundler, install this strategy by putting `gem 'omniauth-webeat'` in your `Gemfile`.

For a Rails installation, be sure to add this strategy to your OmniAuth initializer like so:

``` ruby

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :webeat, "consumer_key", "consumer_secret" 
end
```

Otherwise, you may install this gem with a simple `gem install omniauth-webeat` from the commmand line.

You can retrieve your consumer tokens [here](http://webe.at/oauth).

### Ruby Support

This gem supports Ruby MRI 1.8.7, 1.9.2, 1.9.4, REE, and JRuby.

### More About OmniAuth

Read more about OmniAuth here: https://github.com/intridea/omniauth

### Questions?

frontdesk (at) okfoc.us
