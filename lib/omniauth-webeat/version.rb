module OmniAuth
  module WeBeAt
    class Version
      MAJOR = "0" unless defined? OmniAuth::WeBeAt::MAJOR
      MINOR = "1" unless defined? OmniAuth::WeBeAt::MINOR
      PATCH = "1" unless defined? OmniAuth::WeBeAt::PATCH

      class << self

        def to_s
          [MAJOR, MINOR, PATCH].compact.join(".")
        end
      end

    end
  end
end
