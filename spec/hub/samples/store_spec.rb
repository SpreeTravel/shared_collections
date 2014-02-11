require 'spec_helper'

module Hub::Samples
  describe Store do
    subject { described_class }

    it '#object returns the entire object' do
      json = subject.object
      json.keys.should == %w{store}
      json['store'].keys.should include('id', 'name')
    end
  end
end
