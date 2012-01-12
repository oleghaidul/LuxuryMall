require 'spec_helper'

describe Picture do
  describe 'associations' do
  	it 'belongs_to item' do
      item = Factory :item
      picture = Factory :picture
      picture.item.should == item
    end
  end
end
