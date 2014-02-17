require 'spec_helper'

module Hub::Samples
  describe Base do
    subject { described_class }

    it '#request_id' do
      subject.request_id.should_not be_nil
    end

    it '#open_json should open json file' do
      str = subject.open_json('cart')
      json = JSON.parse(str)
      json.keys.should == %w{cart}
    end

    it '#open_json should raise exception if file does not exist' do
      subject.open_json('not_found').should match(/No such file or directory/)
    end

    it '#parsed_json should return hash' do
      json = subject.parsed_json('order')
      json.keys.should == %w{order}
    end

    context '#build_json' do

      it 'should accept symbol as first arg' do
        str = subject.build_json(:product)
        json = JSON.parse(str)
        json.keys.should == %w{product}
      end

      it 'should accept hash as first arg ' do
        str = subject.build_json({test: 1})
        json = JSON.parse(str)
        json.keys.should == %w{test}
      end

      it 'should load object when override is a hash' do
        str = subject.build_json({}, {hash: :product})
        json = JSON.parse(str)
        json.keys.should == %w{hash}
        json['hash'].keys.should include('id', 'name', 'sku', 'options', 'taxons')
      end

      it 'should process hash as an override value' do
        str = subject.build_json({}, { hash: { test: :cart } })
        json = JSON.parse(str)
        json.keys.should == %w{hash}
        json['hash'].keys.should == %w{test}
        json['hash']['test'].keys.should include('id', 'line_items', 'totals')
      end

      it 'should process an array as an override value' do
        str = subject.build_json({}, { array: [ :product ] })
        json = JSON.parse(str)
        json.keys.should == %w{array}
        json['array'].first.keys.should include('id', 'name', 'sku', 'options', 'taxons')
      end

      it 'should process a proc as an override value' do
        str = subject.build_json({},  address: ->{ [:order, 'shipping_address' ] })
        json = JSON.parse(str)
        json.keys.should == %w{address}
        json['address'].keys.should include('firstname', 'lastname', 'city')
      end

      it 'should process other as an override value' do
        str = subject.build_json({}, address: 1 )
        json = JSON.parse(str)
        json.keys.should == %w{address}
        json['address'].should == 1
      end
    end

  end
end
