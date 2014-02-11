require 'spec_helper'

module Hub::Samples
  describe Order do
    subject { described_class }

    it '#object returns the entire object' do
      json = subject.object
      json.keys.should == %w{order}
      json['order'].keys.should include 'id', 'number', 'totals'
    end

    it '#request returns a request including object' do
      json = subject.request
      json.keys.should == %w{request_id order}
      json['order'].keys.should include 'id', 'number', 'totals'

    end
  end
end
