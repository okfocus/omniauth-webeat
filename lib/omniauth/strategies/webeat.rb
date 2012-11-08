require "omniauth-oauth2"
require "multi_json"

module OmniAuth
  module Strategies
    class WeBeAt < OmniAuth::Strategies::OAuth2
      # change the class name and the :name option to match your application name
      option :name, "webeat"

      option :client_options, {
        :site => "http://webe.at",
        :authorize_url => "/oauth/authorize",
        :authorize_path => "/oauth/authorize", # should we pick one ??
        :proxy => ENV['http_proxy'] ? URI(ENV['http_proxy']) : nil
      }

      uid { raw_info["id"] }

      info do
        {
          :email => raw_info["email"],
          :name => raw_info["name"],
          :username => raw_info["username"],
          :avatar => raw_info["avatar"],
          :id => raw_info["id"],
          :permalink => raw_info["permalink"],
          :token => access_token
        }
      end

      extra do
        { :raw_info => raw_info }
      end

      def raw_info
        @raw_info ||= MultiJson.load(access_token.get('/api/me.json').body)
      rescue ::Errno::ETIMEDOUT
        raise ::Timeout::Error
      end

    end
  end
end
