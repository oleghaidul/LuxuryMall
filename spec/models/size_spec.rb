require 'spec_helper'

describe Size do
  describe 'associations' do
  	it 'belongs_to item' do
      item = Factory :item
      size = Factory :size
      size.item.should == item
    end
  end
end
