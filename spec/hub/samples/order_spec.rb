require 'spec_helper'

module Hub::Samples
  describe Order do
    let(:order_attrs) { %w{id number totals } }
    subject { described_class }

    it '#object returns the entire object' do
      json = subject.object
      json.keys.should == %w{order}
      json['order'].keys.should include(*order_attrs)
    end

    it '#request returns a request including object' do
      json = subject.request
      json.keys.should == %w{request_id order}
      json['order'].keys.should include(*order_attrs)
    end

    it '#message returns a message including object' do
      json = subject.message
      json.keys.should == %w{message store_id payload}
      json['payload']['order'].keys.should include(*order_attrs)
    end

  end
end
