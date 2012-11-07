require 'spec_helper'

describe OmniAuth::Strategies::WeBeAt do
  subject do
    OmniAuth::Strategies::WeBeAt.new({})
  end

  context "client options" do
    it 'should have correct name' do
      subject.options.name.should eq("webeat")
    end

    it 'should have correct site' do
      subject.options.client_options.site.should eq('http://webe.at')
    end

    it 'should have correct authorize url' do
      subject.options.client_options.authorize_url.should eq('/oauth/authorize')
    end
  end
end
