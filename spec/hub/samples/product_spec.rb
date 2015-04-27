require 'spec_helper'

module Hub::Samples
  describe Product do
    let(:product_attrs) { %w{id sku } }
    subject { described_class }

    it '#object returns the entire object' do
      json = subject.object
      json.keys.should == %w{product}
      json['product'].keys.should include(*product_attrs)
    end

    it '#request returns a request including object' do
      json = subject.request
      json.keys.should == %w{request_id product}
      json['product'].keys.should include(*product_attrs)
    end

    it '#message returns a message including object' do
      json = subject.message
      json.keys.should == %w{message store_id payload}
      json['payload']['product'].keys.should include(*product_attrs)
    end

  end
end
